env "local" {
  src = "./schema.hcl"
  dev = "postgresql://localhost/atlas_test?sslmode=disable"
  migration {
    dir = "file://migrations"
  }
  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}
