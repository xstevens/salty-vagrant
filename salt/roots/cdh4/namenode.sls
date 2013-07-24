hadoop-hdfs-namenode:
    pkg.installed:
        - requires:
            - cmd: cdh4-repo 
            - pkg: jdk7
