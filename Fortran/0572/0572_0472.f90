         interface
              subroutine sub(x) bind(c)
        use, intrinsic :: iso_c_binding
              import
              integer(c_int) :: x(..)
              end subroutine
         end interface
         integer :: aa
         call sub1(aa)
        contains
        subroutine sub1(bb)
        integer :: bb(..)
        
        if(size(lbound(bb)) /= 0)print*,201
        if(size(ubound(bb)) /=0)print*,202
        if(size(shape(bb)) /=0)print*,203
        if(size(bb) /= 1)print*,204
        call sub(bb)
        end subroutine sub1
        end
       
        subroutine sub(x) bind(c)
        use, intrinsic :: iso_c_binding
        interface
             subroutine sub3(x)
            import
             integer(c_int) :: x(..)
             end subroutine
        end interface
             integer(c_int) :: x(..)
        if(size(lbound(x)) /= 0)print*,201
        if(size(ubound(x)) /=0)print*,202
        if(size(shape(x)) /=0)print*,203
        if(size(x) /= 1)print*,204
        call sub3(x)
        end subroutine
       
        subroutine sub3(bb)
                interface
                 subroutine sub4(x) bind(c)
                  use, intrinsic :: iso_c_binding
                  integer(c_int) :: x(..)
                 end subroutine
                end interface
        integer :: bb(..)
        if(size(lbound(bb)) /= 0)print*,201
        if(size(ubound(bb)) /=0)print*,202
        if(size(shape(bb)) /=0)print*,203
        if(size(bb) /= 1)print*,204

        call sub4(bb)
        print*,"pass"
        end subroutine
       
        subroutine sub4(x) bind(c)
        use, intrinsic :: iso_c_binding
             integer(c_int) :: x(..)
        if(size(lbound(x)) /= 0)print*,201
        if(size(ubound(x)) /=0)print*,202
        if(size(shape(x)) /=0)print*,203
        if(size(x) /= 1)print*,204
        end subroutine

