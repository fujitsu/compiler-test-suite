program test
      type ty
        integer :: x
      end type ty
      type,extends(ty) :: ty1
        integer :: y
      end type ty1
 
      type (ty), target :: tgt1
      type (ty1), target :: tgt2
      class (ty), pointer :: p1, p2
      integer::st1,st2
      st1 = 0
      st2 = 0
      tgt1%x = 1
      tgt2%x = 2
      tgt2%y = 3
      p1 => tgt1
      p2 => tgt2
      select type (p2)
       type is(ty1)
        select case(p2%y)
         case(1)
          print*,101
         case(3)
          st1=1
        end select
      end select

      select type (p1)
       type is(ty)
        select case(p1%x)
         case(1)
          st2=1
         case(2)
          print*,102
        end select
      end select

      if((st1+st2) == 2) print*,'pass'
end program test

