# Use Python 3.6 or later as a base image
FROM python:3.6
# Copy the app file into the image working directory
COPY . .
#Create and set the
RUN pip3 install -r requirements.txt
# State the listening port for the container.
ENV YOUR_NAME=jwmhogg
# The app's code does not actually specify the port, so it would be useful to include here.
EXPOSE 5500
# Run 'python app.py' on container start-up. This is the main process.
ENTRYPOINT ["python3", "app.py"]

