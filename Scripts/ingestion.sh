python ingest_data.py \
    --user=root \
    --password=root \
    --host=localhost \
    --port=5432 \
    --db=ny_taxi \
    --table_name=yellow_taxi_trips \

URL='http://172.17.0.1:8000/yellow_tripdata_2019-01.csv'
docker run -it \
    --network=pg-network \
    taxi_ingest:v004 \
    --user=root \
    --password=root \
    --host=pg-database \
    --port=5432 \
    --db=ny_taxi \
    --table_name=yellow_taxi_trips \
    --url=${URL}