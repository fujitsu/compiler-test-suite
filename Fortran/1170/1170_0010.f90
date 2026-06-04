    module mod 
       integer::m
     interface
module subroutine sss
      end
  end interface
      end
      
submodule(mod) nmod
      type  :: ty_1                             ! 1)
       integer::x=1
       contains
            procedure,pass :: y1234 => s1
      end type
      type, extends(ty_1) :: ty_2               ! 5) 6)
       contains
      end type
contains
 function   s1(c,a)
  class(ty_1),intent(in):: c
  real     ,intent(in):: a
  logical::s1
  s1=.true.
 end 
end
submodule(mod:nmod) kmod
      type, extends(ty_2) :: ty_3               ! 12) 13)
       contains
        procedure, pass :: y1234 => g123
      end type
contains
 function  g123(c,a)
  class(ty_3),intent(in):: c
  real     ,intent(in):: a
  logical::g123
  !if (c%x/=1) print *,3001
  !if (a/=1.0) print *,3001
  g123=.false.
 end 
end
      print *,'sngg349o : pass'
      end 
