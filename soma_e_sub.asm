.org 0x100
    var_a:
        .word 03
    var_b:
        .word 02

.org 0x110
    soma:
        .word 00
    subtracao:
        .word 00

.org 0x000
    LOAD M(var_a)
    ADD M(var_b)
    STOR M(soma)
    LOAD M(var_a)
    SUB M(var_b)
    STOR M(subtracao)
