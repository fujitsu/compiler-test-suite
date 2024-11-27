MODULE rational_numbers
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rational
   PRIVATE
   INTEGER ::ni=0,d
 CONTAINS
  PROCEDURE,PRIVATE ::  rat_plus_rat => rat_plus
  GENERIC :: OPERATOR(+) => rat_plus_rat
 END TYPE
 interface
    module TYPE(rational) FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rational),INTENT(IN) :: a,b
    END FUNCTION rat_plus
 end interface
END 

submodule(rational_numbers)smod
contains
    module TYPE(rational) FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rational),INTENT(IN) :: a,b
    r%d = a%d*b%d
  END 
end submodule smod

print *,'pass'
end
