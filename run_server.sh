#!/bin/bash

# Run TensorFlow Serving with the specified model and batching configurations
tensorflow_model_server --rest_api_port=8501 --model_config_file=/models/model.config.a --batching_parameters_file=/models/config_batching --enable_batching=true --monitoring_config_file=/models/monitoring.config

# Keep the container running
tail -f /dev/null