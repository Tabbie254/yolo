### Git Work Flow
-The tasks that needed to be completed were the focus of the git commits. 
-To make it simple to track the changes made, the commits were kept short and detailed.

### Image Selection
-The frontend and backend programs expanded the node basic image, and there were two base pictures to choose from. 
-The alpine variation was chosen for lighter pictures, and the mongo image was chosen for the database because the program was connected to a mongo database.

## Image versioning
Images were named according to the standard convention: [DOCKER-HUB-USERNAME>/IMAGE-NAME>] and [tabbieke254/client] and [tabbieke254/backend], tabbieke254/mongo container as well 
- The client and backend images were user-created and since this was their first version, the version number assigned was v1 
- The mongo image that was directly downloaded, used the same naming scheme [tabbieke254/mongo](https://hub.docker.com/repository/docker/tabbieke254/mongo),
- but it was version 6.0.3 instead of 6.0.2.

### service orchestration
- The services were placed in the same designated bridge network to make sure they could communicate with one another. In this instance yolo network
- The yolo volume was given to the mongo service to ensure data permanence.
- Service dependencies were provided in the docker compose to guarantee that services operated in the proper sequence. i.e., the client depends on the backend and the backend depends on Mongo

### git work flow
- The tasks that needed to be completed were the focus of the git commits. To make it simple to track the changes made, the commits were kept short and detailed.

### Image selection
- There were two basic pictures to pick from:

- The node base image was extended by the frontend and backend programs. The alpine variation was used for photographs that were lighter.

- Since the program linked to a mongo database, the mongo image was chosen for the database

### Image versioning

- Images were given the following names in accordance with the semver convention: [DOCKER-HUB-USERNAME>/IMAGE-NAME>] and [tabbieke254/client] and [tabbieke254/backend] - The yolo client and yolo backend images were created by users, and since this was their first version, the version number assigned was 1.0.
- The name of the mongo image that was downloaded directly from Docker Hub was [tabbieke254/mongo].
(https://hub.docker.com/repository/docker/tabbieke254/mongo), but it was version 6.0.3 because it matched the version of the base image.

### Image Deployment
- Sudo docker login is necessary in order to push to the docker hub. To push the image, the tag must be properly given. all images had a v1 tag.

https://hub.docker.com/repository/docker/tabbieke254/backend
https://hub.docker.com/repository/docker/tabbieke254/mongo
https://hub.docker.com/repository/docker/tabbieke254/client

### Service Orchestration
- The services were added to the same named bridge network to make sure they could communicate with one another. In this instance Yolo network: The Yolo volume was assigned to the Mongo service to ensure data permanence.
- Service dependencies were provided in the docker compose to guarantee that services operated in the proper sequence. i.e., the client depends on the backend and the backend depends on Mongo

### Prerequisite
- A Vagrantfile for setting up and configuring the virtual machines is included with this project.
- A playbook in Ansible for installing and configuring the application in the VMs

### Vagrantfile
[Ansible](https://docs.ansible.com/ansible/latest/installation guide/intro installation.html) - [Vagrant](https://developer.hashicorp.com/vagrant/docs/installation).


creates the virtual machines for "geerlingguy/ubuntu2004".
- Sets the host name and IP.
- Forwards the ports 8000 and 3000 from the virtual machines to the host so that the client and backend can communicate via localhost port 3000 in our browser.


### Ansible Playlist

- Roles

  - docker-role   =>  Installs docker, creates a custom network and a volume for data persistence.
                      This spins up the docker, and the database using the `mongo:latest` image.

  - backend-role  =>  Building the backend container.
                      This spins up the backend using the backend image to setup and run the backend container. 

  - client-role   =>  Builds the client container.
                      This spins up the client using the client image to setup and run the client container.

### Running the application

Execute "vagrant up" to set up the VMs and provide ansible settings using "playbook.yml" in the project's root folder.

View the program in your browser by accessing localhost:3000