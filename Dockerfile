FROM tensorflow/tensorflow:latest

# Launchbot labels
LABEL name.launchbot.io="machine-learning-demystified"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL 8888.port.launchbot.io="Jupyter Notebook"
LABEL 6006.port.launchbot.io="TensorBoard"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888
EXPOSE 6006

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=* --allow-root
