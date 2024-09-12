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
 
      type (ty) :: tgt
      class (ty), allocatable :: p1(:,:)
      tgt%x = 11

      allocate(p1(4,3),source=tgt)
      p1(2,2)%x=12

      select type (p1)

        class default
          select type (p1)
            type is (ty2)
                print*,213
            class is (ty)
               if(p1(2,2)%x /=12) then 
                 print*,214
               else 
                 print*,'pass'
               endif
          end select

        type is (ty1)
           print*,215

      end select

end program test
