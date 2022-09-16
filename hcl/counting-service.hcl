service {
  name = "counting"
  port = 9001

  check {
    http     = "http://localhost:9001/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }

  connect {
    sidecar_service {}
  }
}
