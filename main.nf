process foo {
    container 'nextflow/examples:latest'
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
