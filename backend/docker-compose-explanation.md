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

### 