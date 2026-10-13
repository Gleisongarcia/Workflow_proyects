
process downloadTree {
    container 'evolbioinfo/ubuntu:v24.04'

    output:
    path 'ref.nw.gz'

    script:
    """
    wget -O ref.nw.gz https://booster.pasteur.fr/static/files/primates/ref.nw.gz
    """
}

process listTips {
    container 'evolbioinfo/gotree:v0.4.1a'

    publishDir 'results', mode: 'copy'

    input:
    path tree

    output:
    path 'tips.tsv'

    script:
    """
    gotree stats tips -i ${tree} > tips.tsv
    """
}

workflow {
    tree = downloadTree()
    tips = listTips(tree)

    tips
        .splitCsv(header: true, sep: '\t')
        .count()
        .view { "Number of tips: ${it}" }
}
