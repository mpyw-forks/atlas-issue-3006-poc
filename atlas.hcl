env "local" {
  src = "./schema.hcl"
  url = "postgresql://postgres:postgres@localhost:5432/app?sslmode=disable"
  dev = "docker://postgres/15/dev"
  migration {
    dir = "file://migrations"
  }
}
