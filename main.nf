process foo {
    container 'https://quay.io/biocontainers/multiqc:1.3--py35_2'
    secret 'personal_secret'
    secret 'workspace_1'

    """
    echo \$personal_secret
    echo "wwwwww"
    echo \$workspace_1
    """
}


workflow {
    foo()
}
