# gp-ci-kickstart

The docker-compose.yml file will deploy the following containers:

* [Jenkins](https://hub.docker.com/r/jenkins/jenkins)
* [Artifactory](https://github.com/jfrog/artifactory-docker-examples/tree/master/docker-compose)
* [Puppet](https://github.com/puppetlabs/puppet-in-docker-examples)
* [Gogs](https://hub.docker.com/r/gogs/gogs)

#### 1. Install Docker CE
 
Click on the links to download the appropriate Desktop / Server platform installation appropriate for your needs

<https://docs.docker.com/install/#supported-platforms>

#### 2. Create the directories below in your honme directory for persistent container storage

* artifactory_home
* gogs_home
* jenkins_home
* postgresql_home
* puppet_home

#### 3. Clone the repository run Docker Compose from the same directory:

```bash
git clone https://github.com/Orasi/gp-cicd-kickstart.git 
```

#### 4. Run Docker Compose from the same directory:

```bash
cd gp-cicd-kickstart && docker-compose up -d
```

#### 5. You should then be able to access each of the applications at the 
