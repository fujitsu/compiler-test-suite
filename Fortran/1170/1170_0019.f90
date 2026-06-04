    module mod 
     interface
module subroutine sss
      end
  end interface
      type  :: ty_1                             ! 1)
       contains
            procedure,pass :: y1234 => s1
      end type
      type, extends(ty_1) :: ty_2
      end type
contains
 subroutine s1(c)
  class(ty_1),intent(in):: c
 end 
      end
      
submodule(mod) nmod
end
      print *,'sngg358o : pass'
      end 
