MODULE MOD1
CONTAINS 
  SUBROUTINE SUB1              &
 &          (  nspec ,  cflx_typ    )  
    CHARACTER(6),INTENT(out):: cflx_typ(nspec)

     cflx_typ(1) = '1'
     cflx_typ(2) = cflx_typ(1)
  END SUBROUTINE SUB1
END MODULE MOD1
use MOD1
    parameter (nspec=10)
    CHARACTER(6):: cflx_typ(nspec)
call SUB1(  nspec ,  cflx_typ   )
print *,'pass'
end

