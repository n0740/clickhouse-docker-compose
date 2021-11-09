# clickhouse-docker-compose
Run clickhouse via make & docker-compose

## Start
```
$ make up
Creating network "clickhouse_ch_ntw" with the default driver
Creating clickhouse_server_1 ... done
```

## Check
```
$ make ps

       Name              Command       State              Ports
---------------------------------------------------------------------------
clickhouse_server_1   /entrypoint.sh   Up      8123/tcp, 9000/tcp, 9009/tcp
```

## Use
```
$ make client

0ecbfc806199 :) select version();

SELECT version()

Query id: 9d864343-b178-4c66-89b8-0477547150d9

┌─version()──┐
│ 21.8.10.19 │
└────────────┘
```

## Stop
```
$ make down
Stopping clickhouse_server_1 ... done
Removing clickhouse_server_1 ... done
Removing network clickhouse_ch_ntw
```
