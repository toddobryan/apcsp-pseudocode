#lang apcsp-pseudocode

myList ← []

DISPLAY([1, 2, 3])

// displays abc
DISPLAY("abc")
a ← false
b ← NOT a

DISPLAY(a)
DISPLAY(b)

IF (a) {
    DISPLAY("true")
} ELSE {
    DISPLAY("false")
}

DISPLAY("\n")

i ← 0
REPEAT 10 TIMES {
    DISPLAY(i)
    i ← i + 1
}

DISPLAY("\n")

i ← 3
REPEAT UNTIL (i > 5) {
    DISPLAY(i)
    i ← i + 1
}

l ← [1, 2, 3]

DISPLAY(l[2])

l[1] ← 5

DISPLAY(LENGTH(l))

v ← ["a", "b", "c", "d"]
REMOVE(v, 1)
DISPLAY(v)
INSERT(v, 2, "bb")
DISPLAY(v)
APPEND(v, "e")
DISPLAY(v)

FOR EACH x IN v {
    DISPLAY(x)
}

PROCEDURE add(a, b) {
    IF (a < b) {
        RETURN(a + b)
    } ELSE {
        RETURN(a - b)
    }
}

DISPLAY("\n")

DISPLAY(add(7, 10))
DISPLAY("\n")

PROCEDURE printFive(s) {
    i ← 0
    REPEAT UNTIL (false) {
        IF (i ≥ 5) {
            RETURN("blah")
        } ELSE {
            DISPLAY(s)
            DISPLAY("\n")
            i ← i + 1
        }
    }
}

printFive("what?")

x ← 5
DISPLAY(x ≥ 3 AND x ≤ 6)
DISPLAY("\n")
DISPLAY(x ≠ 5)
DISPLAY("\n")

q ← INPUT()
DISPLAY(q)
DISPLAY("\n")
DISPLAY(q)
