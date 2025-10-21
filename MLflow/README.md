pip install mlflow

mlflow server --host 127.0.0.1 --port 8080 # start the MLflow tracking server
# Access the MLflow UI at http://localhost:8080

# Local testing
mlflow models serve -m runs:/<RUN_ID>/model -p 5000

# Build Docker image
mlflow models build-docker -m "runs:/<RUN_ID>/model" -n "my-model"

# Run Docker container
docker run -p 8080:8080 my-model

# Test inference
curl -X POST -H "Content-Type: application/json" \
  -d '{"dataframe_split": {"columns": ["col1"], "data": [[1.0]]}}' \
  http://localhost:8080/invocations

# Push to registry
docker tag my-model:latest registry.example.com/my-model:v1
docker push registry.example.com/my-model:v1

# Deploy to edge server
ssh edge-server
docker pull registry.example.com/my-model:v1
docker run -d -p 8080:8080 registry.example.com/my-model:v1