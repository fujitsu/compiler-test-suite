MODULE rational_numbers
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rational
   PRIVATE
   INTEGER ::ni=0
   INTEGER ::d
 END TYPE
 interface
    module integer        FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rational),INTENT(IN) :: a,b
    END FUNCTION rat_plus
 end interface
END 

submodule(rational_numbers)smod
contains
  module procedure rat_plus
    r = a%d*b%d
  END procedure
end submodule smod

print *,'pass'
end
