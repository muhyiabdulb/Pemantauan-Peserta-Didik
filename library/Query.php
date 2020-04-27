<?php

require_once "..\\config\\Database.php";

class Query extends mysqli
{
    public function __construct(string $table)
    {
        parent::__construct(HOST, USER, PASS, DATABASE);
        if ($this->connect_error) {
            die("Connection error: " . $this->connect_error);
        }

        $this->database = DATABASE;
        $this->table = $table;
        $this->columns = [];

        $this->getRows();
    }

    public function Insert()
    {
        $colString = implode(", ", $this->columns);
        $this->query("INSERT INTO {$this->table} ({$colString}) VALUES ()");
    }

    private function getRows() {
        $this->select_db("information_schema");
        $result = $this->query("SELECT COLUMN_NAME FROM `COLUMNS` WHERE TABLE_SCHEMA='{$this->database}' AND TABLE_NAME='{$this->table}'");
        if ($result) {
            while ($row = $result->fetch_assoc()) {
                array_push($this->columns, $row["COLUMN_NAME"]);
            }
        } else {
            die($this->error);
            echo "hasat";
        }
        $this->select_db(DATABASE);
    }
}

$siswa = new Query("admin");
foreach ($siswa->columns as $value) {
    echo $value . "<br>";
}
echo implode(", ", $siswa->columns);