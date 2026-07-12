# First startup
During the first startup, it is crucial to get into the tailscale container and run serve the 22 sftp port.
Otherwise the server will not find the sftp server and will not work, after that it should pick up automatically on every restart,
as it is stored in the tailscale state contained in data/tailscale folder.
```bash
docker exec -it tailscale sh
tailscale serve --bg tcp 22 tcp://sftp:22
```