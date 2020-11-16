# ARROW-10623

Demonstration of issue [ARROW-10623](https://issues.apache.org/jira/browse/ARROW-10623): Arrow 1.0.1 cannot read parquet file written by arrow 2.0.0

Building the containers takes a while because it needs to install both versions of the arrow package.
```
> docker-compose build
[...coffee...]
```

Then running the demo is quick:
```
> docker-compose up
Starting arrow2_read_1  ... done
Starting arrow2_write_1 ... done
Attaching to arrow2_write_1, arrow2_read_1
write_1  |
write_1  | Attaching package: ‘utils’
write_1  |
write_1  | The following object is masked from ‘package:arrow’:
write_1  |
write_1  |     timestamp
write_1  |
write_1  | [1] "written parquet using arrow 2.0.0"
write_1  | [1] "read parquet using arrow 2.0.0"
write_1  | [1] 100   1
write_1  | structure(list(col1 = 1:100), row.names = c(NA, 100L), class = "data.frame")
arrow2_write_1 exited with code 0
read_1   |
read_1   | Attaching package: ‘utils’
read_1   |
read_1   | The following object is masked from ‘package:arrow’:
read_1   |
read_1   |     timestamp
read_1   |
read_1   | [1] "read parquet using arrow 1.0.1"
read_1   | [1] 0 1
read_1   | structure(list(1:100), class = "data.frame")
arrow2_read_1 exited with code 0
```