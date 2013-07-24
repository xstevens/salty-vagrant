hadoop-hdfs-secondarynamenode:
    pkg.installed:
        - requires:
            - cmd: cdh4-repo
            - pkg: jdk7
