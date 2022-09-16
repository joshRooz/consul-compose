service {
  name = "dashboard"
  port = 8000

  check {
    http     = "http://localhost:8000/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }

  connect {
    sidecar_service {
      proxy {
        upstreams = [
          {
            destination_name = "counting"
            local_bind_port  = 9001
          }
        ]
      }
    }
  }
}
