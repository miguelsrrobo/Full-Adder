# Full-Adder

## 🔹 O que é um Full-Adder?

Um **Full-Adder** é um circuito lógico **combinacional** que realiza a soma de **três bits**:

* **A**: primeiro bit de entrada
* **B**: segundo bit de entrada
* **Cin** (Carry-in): o "vai um" da casa anterior (menos significativa)

### Ele produz duas saídas:

* **S (Sum)**: resultado da soma dos três bits
* **Cout (Carry-out)**: "vai um" para a próxima etapa (mais significativa)

---

## 🔹 Tabela-Verdade do Full-Adder

| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

---

## 🔹 Expressões Lógicas

* **Soma (Sum)** = `A ⊕ B ⊕ Cin`
* **Carry-out (Cout)** = `(A & B) | (A & Cin) | (B & Cin)`

---

## 🔹 Implementação com Portas Lógicas

Você pode montar um Full-Adder usando duas portas **XOR**, duas **AND** e uma **OR**:

```
Sum  = A ⊕ B ⊕ Cin
Cout = (A & B) | (B & Cin) | (A & Cin)
```

---

## 🔹 Implementação em Verilog (Simples)

```verilog
module full_adder (
    input  A,
    input  B,
    input  Cin,
    output Sum,
    output Cout
);
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);
endmodule
```

---

## 🔹 Aplicações do Full-Adder

* Somadores maiores (4, 8, 16 bits)
* ALUs (Unidades Lógicas e Aritméticas)
* Contadores
* Sistemas embarcados e FPGAs
