    module mod 
     interface
module subroutine sss
      end
  end interface
      end
      
submodule(mod) nmod
      type  :: ty_1                             ! 1)
       contains
            procedure,pass :: y1234 => s1
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
      type, extends(ty_1) :: ty_3               ! 12) 13)
       contains
        procedure, pass :: y1234 => g123
      end type
contains
 function  g123(c,a)
  class(ty_3),intent(in):: c
  real     ,intent(in):: a
  logical::g123
  g123=.false.
 end 
end
      print *,'sngg350o : pass'
      end 
