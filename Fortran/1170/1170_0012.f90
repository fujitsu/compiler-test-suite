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
 subroutine s1(c)
  class(ty_1),intent(in):: c
 end 
end
submodule(mod:nmod) kmod
      type, extends(ty_1) :: ty_3               ! 12) 13)
       contains
        procedure, pass :: y1234 => g123
      end type
contains
subroutine g123(c)
  class(ty_3),intent(in):: c
 end 
end
      print *,'sngg351o : pass'
      end 
