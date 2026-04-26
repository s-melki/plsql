# plsql

## Oracle Connection Notes

These TP scripts are written for Oracle SQL*Plus / SQLcl style execution.
Each `.sql` file in the `TP/` folder includes a top comment with an example connection statement.
Replace `<username>`, `<password>`, `<host>`, `<port>`, and `<service_name>` with your actual Oracle credentials.

Example Oracle connect command:
```sql
connect your_user/your_password@localhost:1521/orclpdb1
```

---

## Connecting FreeSQL.com with VS Code

FreeSQL.com is an online SQL playground that supports many database engines. To use VS Code with an Oracle connection, follow these steps:

### 1. Install VS Code

- Download and install Visual Studio Code from https://code.visualstudio.com/

### 2. Install SQL Tools extensions

In VS Code, install these extensions:
- `SQLTools` (main extension)
- `SQLTools OracleDB` or `Oracle Developer Tools for VS Code` if you need Oracle support

### 3. Configure a new Oracle connection

Use SQLTools to create a new connection:

1. Open the Command Palette: `Ctrl+Shift+P`
2. Type `SQLTools: Add new connection`
3. Select `Oracle` or `OracleDB`
4. Fill in the required fields:
   - **Connection name**: A friendly name like `FreeSQL Oracle`
   - **Username**: your Oracle user name
   - **Password**: your Oracle password
   - **Server**: host or IP address
   - **Port**: usually `1521`
   - **Service name**: Oracle service name or SID

Example settings for `settings.json`:
```json
{
  "sqltools.connections": [
    {
      "name": "FreeSQL Oracle",
      "driver": "OracleDB",
      "username": "your_user",
      "password": "your_password",
      "connectString": "localhost:1521/orclpdb1"
    }
  ]
}
```

### 4. Use FreeSQL.com credentials

If you are using FreeSQL.com as the host/provider, you need the exact Oracle connection details from that service.
FreeSQL.com itself does not directly provide a VS Code plugin, so use the same credentials in VS Code as you would use in the FreeSQL.com web interface.

### 5. Connect and run SQL

- Open the SQLTools explorer in VS Code.
- Select your Oracle connection and click `Connect`.
- Open a `.sql` file from the `TP/` folder.
- Run the script using SQLTools commands or the editor's `Run Query` button.

### 6. Example SQL*Plus connection inside your scripts

For Oracle SQL*Plus or SQLcl, use the comment example at the top of each script and then run:
```sql
CONNECT username/password@host:port/service_name
@TP/ex1.sql
```

### 7. Notes

- FreeSQL.com is a web-based SQL environment. VS Code can connect to the same Oracle database only if the database is reachable from your machine.
- Always keep credentials secure and do not commit passwords to source control.
- If you only have a web-based database endpoint from FreeSQL.com, make sure network access is allowed from your local machine.
