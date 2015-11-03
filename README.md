# jdbc-drill

Drill JDBC driver that allows Java programs to connect to a Drill server cluster using standard, database independent Java code.

## Usage

To make the driver accessible to JDBC and ActiveRecord code running in
JRuby :

    require 'jdbc/drill'
    Jdbc::Drill.load_driver
