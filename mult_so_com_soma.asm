.org 0x100
    var_a:
        .word 02
    var_b:
        .word 03

.org 0x110
    cont:
        .word 01
    res:
        .word 00
    um:
        .word 01
    laco:
        LOAD M(var_b)
        ADD M(res)
        STOR M(res)
        
        LOAD M(cont)
        ADD M(um)
        STOR M(cont)
        
        LOAD M(var_a)
        SUB M(cont)
        
        JUMP+ M(laco)
        
.org 0x000
    JUMP M(laco)
