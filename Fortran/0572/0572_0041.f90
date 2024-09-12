integer::a,c(5)
integer,pointer::b
integer,target::d
b=>d
call sub(a,b,c)
contains
subroutine sub(aa,bb,cc)
    Type(*)::aa 
    Type(*)::cc(*) 
    Type(*)::bb 
 if(rank(aa)/= 0)print*,101
 if(rank(bb)/= 0)print*,102
 if(rank(cc)/= 1)print*,103
print*,"PASS"
End subroutine

end
