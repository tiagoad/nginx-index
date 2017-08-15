# nginx-index

A quick docker directory index.
Root is under volume /http.

## Examples

### Single directory

`/Users` under `http://localhost:8080/`
    
    docker run -p 8080:80 -i \
        -v /Users/:/http/users \
        nginx-index

### Multiple directories

`/mnt/disk1` under `http://localhost:8080/disk1`
`/mnt/disk2` under `http://localhost:8080/disk2`

    docker run -p 8060:80 -i \
        -v /mnt/disk1/:/http/disk1 \
        -v /mnt/disk2/:/http/disk2 \ 
        nginx-index