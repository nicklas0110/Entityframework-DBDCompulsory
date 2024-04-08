# Rollback Plan and documentation for Database Migrations

# Switch branches to find either the manual or ef migrations

## Overview
This document include:
Instructions for setting up the project.
Documentation for the manual migrations.
Documentation for the EF Core migrations.
Rollback instructions for both manual and EF Core migrations.

# Database-Schema-Migrations

## Instructions for setting up the project.

1. For cloning the repository:

```
git clone https://github.com/nicklas0110/StoreCompulsory
```

2. Build the project

Navigate to the root folder and run the following command:

```
dotnet build
```

 3. Ensure you have the correct Entity Framework Tool version installed globally 

```
dotnet tool install --global dotnet-ef --version 6.0.6
```

## Documentation for the manual migrations and rollback plan

The manual migrations can be found in the scripts folder,
in there you will find the sql script made for every step of creating the database,
in the later versions there vill be a v[number] that will indicate which version the scirpt is.

Along with the creation script there will also be rollback script you can run from latest version to newest

## Documentation for the EF Core migrations.

Create migrations with this command:

```
dotnet ef migrations add [name]
```

You can find migrations in the migrations folder


## Rollback EF

These are the migrations:
1. `initial`
2. `add-category`
3. `add-ratings`

## Pre-Rollback

- Make backup before migrating
- Verify version (Dotnet 6)

## Rollback Steps

### Step 1: Rollback `add-ratings` Migration

- Command:
    ```
    dotnet ef database update add-category
    ```
- This command rolls back the database to the state just after the `add-category` migration was applied, effectively removing the changes introduced by `add-ratings`.

### Step 2: Rollback `add-category` Migration

- Command:
    ```
    dotnet ef database update initial
    ```
- This command rolls back the database to the state just after the `initial` migration was applied, effectively removing the changes introduced by `add-category`.

### Step 3: Rollback `initial` Migration (Optional)

- If you need to revert to a completely empty database (removing all migrations), execute the following command:
    ```
    dotnet ef database update 0
    ```
- This command rolls back all migrations, reverting the database to its original state before any migrations were applied.
