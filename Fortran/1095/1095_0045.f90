MODULE rational_numbers
 TYPE,PUBLIC :: rational
   PRIVATE
   INTEGER ::ni=0
   INTEGER ::d
 END TYPE
 interface
    module subroutine rat_plus(a)!,b) 
      CLASS(rational),INTENT(IN) :: a
    END 
 end interface
END 

submodule(rational_numbers)smod
contains
  module procedure rat_plus
  type(rational)::r
    r%d = a%d
  END procedure
end submodule smod

print *,'sngg292h : pass'
end
