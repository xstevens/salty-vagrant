hadoop-hdfs-datanode:
    pkg.installed:
        - requires:
            - cmd: cdh4-repo
            - pkg: jdk7
