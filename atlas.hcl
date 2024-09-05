env "local" {
  src = "./schema.hcl"
  dev = "postgresql://localhost/atlas_dev?sslmode=disable"
  url = "postgresql://localhost/atlas_local?sslmode=disable"
  migration {
    dir = "file://migrations"
  }
  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}
