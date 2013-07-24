cdh4-repo:
    cmd.run:
        - name: /bin/true
        - requires:
            - cmd: cdh4-apt-key
            - file: /etc/apt/sources.list.d/cloudera.list

cdh4-apt-key:
    cmd.run:
        - name: curl -s http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh/archive.key | apt-key add -
        - onlyif: test `apt-key list | grep Cloudera | wc -l` -eq 0
        - requires:
            - pkg: curl
        
/etc/apt/sources.list.d/cloudera.list:
    file.managed:
        - user: root
        - group: root
        - mode: 644
        - source: salt://cdh4/cloudera.list
