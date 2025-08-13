          integer :: aa(4)
          call sub(aa,-2)
          print*,"pass"
         contains
         subroutine sub(cc,k)
         integer :: cc(k:*)
         if(any(lbound(cc) /= -2))print*,302
         call sub2(cc)
       
        end subroutine sub
        subroutine sub2(bb)
        integer :: bb(..)
        write(3,*)lbound(bb),ubound(bb)
        rewind 3
        read(3,*) k1,k2
        if (k1/=1) print *,201,k1
        if (k2/=-1) print *,202,k2
        if(size(bb).ne.-1)print*,"203"
        end subroutine sub2
        end

