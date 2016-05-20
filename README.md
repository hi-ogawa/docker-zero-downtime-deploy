Goal: haproxy-ing doubled container apps in a single host

---

Basic Setup:

```
$ ansible -i ansible/hosts all -m ping
$ ansible-galaxy install -p ansible/roles hi-ogawa.docker
$ ansible-playbook ansible/install.yml -i ansible/hosts
```

---

Build Container Application (repository is here: https://hub.docker.com/r/hiogawa/ruby_test_app/)

```
$ docker build -t hiogawa/ruby_test_app ./app
$ docker push hiogawa/ruby_test_app
```

---

Deployment

```
$ ansible-playbook ansible/deploy.yml -i ansible/hosts
```
