    module mod
     interface
        module subroutine sss
      end
  end interface
      type  :: ty_1                             ! 1)
        integer::x1
       contains
            procedure,pass :: y1234 => s1
      end type
contains
 subroutine s1(c)
  class(ty_1),intent(in):: c
 end
      end
      
submodule(mod) nmod
      type, extends(ty_1) :: zy_3               ! 12) 13)
       contains
        procedure, pass :: y1234 => g123
      end type
contains
subroutine g123(c)
  class(zy_3),intent(in):: c
 end
end

      print *,'sngg368o : pass'
      end 
