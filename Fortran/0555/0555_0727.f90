program test
      type ty
        integer :: x=0
      end type ty

      type,extends(ty) :: ty1
        integer :: y=0
      end type ty1

      type,extends(ty1) :: ty2
        integer :: z=0
      end type ty2
 
      type (ty) :: tgt
      type (ty2),target :: tgt2(5,7)
      class (ty), allocatable :: p1(:)
      class (ty), pointer :: p2(:,:)
      tgt%x = 11
      tgt2%x = 12
      tgt2(4,5)%x = 13

      allocate(p1(5),source=tgt)
       p1(5)%x=14
       p2 => tgt2

      select type (p2)

        class is(ty1)
          select type (p1)
            type is (ty2)
               print*,213
            class is (ty)
               if(p1(5)%x /=14 .and. p2(4,5)%x/=13) then 
                 print*,214
               else 
                 print*,'pass'
               endif
          end select

        type is (ty1)
           print*,215

      end select

end program test

