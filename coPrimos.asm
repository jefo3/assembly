.org 0x100
    var_a:
        .word 15
    var_b:
        .word 08
    coPrimos:
        .word 01
    
    
    
.org 0x110
    restoA: 
        .word 00
    restoB: 
        .word 00
    cont:
        .word 01
    um:
        .word 01  
    vezesNoLaco:
        .word 00
    
    laco:
        LOAD M(cont)
        ADD M(um)
        STOR M(cont)
        
        
        LOAD M(var_a)
        DIV M(cont)
        STOR M(restoA)
        
        LOAD M(var_b)
        DIV M(cont)
        STOR M(restoB)
        
        LOAD M(restoA)
        SUB |M(restoB)|
        SUB M(um)
        
        JUMP+ M(0x000)
    
        LOAD M(coPrimos)
        sub M(um)
        STOR M(coPrimos)
        
.org 0x000 
    LOAD M(var_b)
    SUB |M(var_a)|
    STOR M(vezesNoLaco)
    
    SUB M(cont)
    JUMP+ M(laco)
    
    
    
