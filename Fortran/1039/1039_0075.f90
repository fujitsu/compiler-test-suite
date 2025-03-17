subroutine sub1
TYPE Z_TYPE; integer::Z; END TYPE
TYPE(Z_TYPE) ,POINTER::G
    ALLOCATE (G)
    G=Z_TYPE(3)
if (G%Z/=3)print *,"Error-1*:",G%Z 
END 
subroutine sub2
TYPE Z_TYPE; integer::Z; END TYPE
TYPE(Z_TYPE) ::G
    G=Z_TYPE(3)
if (G%Z/=3)print *,"Error-2*:",G%Z 
END 
call sub1
call sub2
print *,'pass'
end
