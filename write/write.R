library(arrow)
df <- data.frame(col1 = 1:100)
arrow::write_parquet(df, "/workdir/data-arrow2.parquet")
print(paste0("written parquet using arrow ", packageVersion("arrow")))
df <- arrow::read_parquet("/workdir/data-arrow2.parquet")
print(paste0("read parquet using arrow ", packageVersion("arrow")))
print(dim(df))
dput(df)