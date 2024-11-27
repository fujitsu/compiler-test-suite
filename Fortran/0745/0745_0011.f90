real*8    I, TRYME
common I
call sub
call S(TRYME,+(I),I)
If (I.ne.999) write(6,*) "NG"
If (TRYME.ne.3) write(6,*) "NG"
print *,'pass'
contaIns
 SUBROUTINE S(TRYME,RTNME,HITME)
 real*8    TRYME,RTNME,HITME
 HITME = 999
 TRYME = RTNME
 END subroutIne
END
subroutine sub
real*8    i
common i
i=3
end
