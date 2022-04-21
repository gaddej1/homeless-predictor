# Homeless Predictor

Homeless Predictor is a website that predicts when the user would become homeless based on their monthly necessary expenses and savings and displays the homeless shelters in their county, which the site encourages the user to donate to or volunteer at.

Homeless Predictor has two use cases: calculate how long before homeless and find homeless shelters in a county in New Jersey. The use case descriptions for these can be found [here](docs/Use_Case_Descriptions.pdf).

The UML Diagrams can be found [here](docs/UML_Diagrams.pdf).

The Open Source Maintenance guidelines can be found [here](docs/open_source.md).

## Installation Instructions
Navigate to the directory on the VM that you want to clone this repository into. 
Run the following command:

    git clone git@github.com:gaddej1/homeless-predictor.git

After cloning the repository, navigate to the src folder. After doing so, run the following commands:

    bundle install
    yarn install

After these installations have been completed, run the following commands to set up the database:

    rails db:migrate:reset
    rails db:seed

The app is now ready to be run!

## Launching Homeless Predictor
To run the server, you need to know your VM's IP address. You can find this by running this command:

    ip addr show eth0
  
The IP address shown after inet is your IP address. For instance, you may find something that looks like this: inet 10.18.8.125/24. Use this address without the /24 in the next command. In the example provided, I would use 10.18.8.125. 

Run the following command to launch the server:

    rails server --binding=your_server_IP

The server should now be running. You can view the Homeless Predictor application by going to "http://(your vm name):3000".
