# Redis Init Scripts

## Create Redis with startup scripts

First, create the Redis instance with init scripts:

```console
> kubectl apply -f redis.yaml
```

Wait for Redis to be ready:

```console
> kubectl get pods -n demo
NAME           READY   STATUS    RESTARTS   AGE
redis-demo-0   1/1     Running   0          30s
```

## Verify init script ran successfully

Connect to Redis and verify the keys created by init.sh:

```console
> kubectl exec -n demo -it redis-demo-0 -- bash
Defaulted container "redis" out of: redis, redis-init (init)

# Inside the pod
root@redis-demo-0:/data# redis-cli
127.0.0.1:6379> GET user:1:name
"John Doe"
127.0.0.1:6379> GET user:1:email
"john@example.com"
127.0.0.1:6379> GET user:2:name
"Jane Smith"
127.0.0.1:6379> GET user:3:name
"Bob Johnson"
127.0.0.1:6379> GET user:4:name
"Alice Williams"
127.0.0.1:6379> GET user:5:name
"Charlie Brown"
127.0.0.1:6379> GET user:6:name
"Diana Prince"
127.0.0.1:6379> KEYS user:*
 1) "user:1:name"
 2) "user:1:email"
 3) "user:2:name"
 4) "user:2:email"
 5) "user:3:name"
 6) "user:3:email"
 7) "user:4:name"
 8) "user:4:email"
 9) "user:5:name"
10) "user:5:email"
11) "user:6:name"
12) "user:6:email"
127.0.0.1:6379> QUIT
```
