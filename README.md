# 01 - Hello World

## 📖 Objective

Create and execute the first ABAP program using an ABAP class in Eclipse (ADT) and display a simple message.

---

## 📚 Concepts Covered

- ABAP Class
- Class Definition and Implementation
- `IF_OO_ADT_CLASSRUN` Interface
- `main` Method
- `out->write()` Method
- Program Activation
- Program Execution

---

## 💻 Program

**Class Name:** `ZCL_HELLO_EXAMPLE`

The program prints the following message:

```text
Hello, ABAP!
```

---

## 📝 Code Explanation

### `CLASS ... DEFINITION`

Defines the ABAP class.

### `INTERFACES if_oo_adt_classrun`

Implements the ADT runtime interface, allowing the class to be executed directly from Eclipse.

### `METHOD if_oo_adt_classrun~main`

This is the entry point of the program. Execution begins here.

### `out->write( )`

Displays text in the console output.

---

## ▶️ Output

```text
Hello, ABAP!
```

---

## 🎯 What I Learned

- How to create an executable ABAP class.
- The purpose of the `IF_OO_ADT_CLASSRUN` interface.
- The role of the `main` method as the starting point of execution.
- How to display output using `out->write()`.
- Why an ABAP class must be **activated** before it can be executed.

---

## 🛠 Tools Used

- SAP Eclipse (ADT)
- ABAP Platform
- VS Code (Documentation)
- Git & GitHub (Version Control)
