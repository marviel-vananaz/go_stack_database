# Database

This project is based on Sugardaddy's libraries and project structure. The flow is basically the same, but custom libraries by Synapse
and tools are replaced by open-source alternative that has the same principles with Synapse's.

## Migrations

Migrations are handled by [Atlas](https://atlasgo.io/). This is a more lightweight alternative to `flyway` that's being used by Synapse.
This no longer requires a Docker container to run. Instead of defining migrations, you define schemas in a declarative manner
(see `./tables/pets.sql` file). If there are changes, you modify `./tables/pets.sql` file then command `make apply` to apply it to
the database, no migrations required! If migrations are needed, `Atlas` can generate one for us.

## Developing

### Requirements

- [Atlas](https://atlasgo.io/)

### Applying changes to the database

1. Command `make apply` to apply the changes into the database. Currently just using `sqlite`. This command will generate a database file if it does not exists
