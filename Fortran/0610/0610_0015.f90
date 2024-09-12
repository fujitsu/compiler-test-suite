program test
      type ty
        integer :: x
      end type ty
      type,extends(ty) :: ty1
        integer :: y
      end type ty1

      type (ty1), target :: tgt2(13:33)
      class (ty), pointer ::  p2(:)
      integer::st1
      st1 = 0
      tgt2%x = 2
      tgt2%y = 3
      tgt2(13:30:3)%x = 2
      tgt2(13:30:3)%y = 3
      p2 => tgt2

      select type (A=>p2(:30:3))
       type is(ty1)
        select case(A(2)%y)
         case(1)
          print*,101
         case(3)
          st1=1
        end select
      end select

      if(st1 == 1) print*,'pass'
print*,st1
end program test
