program test
      type ty
        integer :: x
      end type ty

      type,extends(ty) :: ty1
        integer :: y
      end type ty1

      type,extends(ty1) :: ty2
        integer :: z
      end type ty2

      type (ty) :: tgt(10)
      type (ty2),target :: tgt2(18)
      class (ty), allocatable :: p1(:)
      class (ty), pointer :: p2(:)
      tgt%x = 10
      tgt(2:10:2)%x = 11
      tgt2(2:18:2)%x = 12
      tgt2(2:18:2)%y = 13
      tgt2(2:18:2)%z = 14

      allocate(p1,source=tgt)
       p2 => tgt2

      select type (A2=>p2(2::2))

        class is(ty1)
          if(all(A2%x /=12) .or. all(A2%y /=13)) then 
            print*,214, A2%x,A2%y
          else 
            print*,'pass'
          endif
          select type (A1=>p1(2::2))
            type is (ty2)
               print*,213
            class is (ty)
               if(all(A1%x /=11)) then 
                 print*,214
               else 
                 print*,'pass2'
               endif
          end select

        type is (ty1)
           print*,215

      end select

end program test
