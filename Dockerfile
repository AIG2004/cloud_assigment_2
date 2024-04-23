# Use a base image with Python and Jupyter Notebook installed
FROM jupyter/datascience-notebook:latest

# Set the working directory
WORKDIR /app

# Copy the Jupyter Notebook script into the container
COPY books_analysis.ipynb /app/books_analysis.ipynb

# Expose the port that Jupyter Notebook runs on
EXPOSE 8888

# Command to run Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
