MODULE rational_numbers
 IMPLICIT NONE
 TYPE,PUBLIC :: rational
   PRIVATE
   INTEGER ::ni=2
   INTEGER ::d
 END TYPE
 interface
    module   FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rational),INTENT(IN) :: a,b
      type(rational)::r
    END FUNCTION rat_plus
    module subroutine  set(a)
      CLASS(rational) :: a
    end
    module subroutine  chk(a)
      CLASS(rational) :: a
    end
 end interface
END 

submodule(rational_numbers)smod
contains
  module procedure rat_plus
if (a%ni/=2) print *,202
if (b%ni/=2) print *,203
if (a%d/=3) print *,202
if (b%d/=3) print *,203
    r%d = a%d*b%d
  END procedure
    module procedure   set
      if (a%ni/=2) print *,402
      a%d=3
    end
    module procedure   chk
      if (a%ni/=2) print *,602
      if (a%d /=9) print *,612
      a%d=3
    end
end submodule smod

use rational_numbers
      CLASS(rational),allocatable:: a,b
      type(rational):: c
allocate(a,b)
call set(a) 
call set(b) 
c= rat_plus(a,b)
call chk(c) 

print *,'sngg286h : pass'
end
