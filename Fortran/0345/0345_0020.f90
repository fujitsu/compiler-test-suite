      program main
        n=2
        call sub(n)
        print *,'pass'
      end program

      subroutine sub0(isize,n)
        integer(4)::isize
        integer(4)::n
        integer(4),allocatable::al(:)
         allocate(al(isize))
         if (allocated(al)) then
           if (size(al)/=n) print *,'error1'
           if (ubound(al,1)/=n) print *,'error2'
         else
           if (size(al)/=n) print *,'error3'
         endif
      end subroutine
      subroutine sub1(n,il,iu)
        integer(4),intent(in)::n,il,iu
        integer(4),allocatable::al(:)
         allocate(al(il:iu))
         if (allocated(al)) then
           if (size(al)/=n) print *,'error4'
           if (ubound(al,1)/=iu) print *,'error5'
         else
           if (size(al)/=n) print *,'error6'
         endif
      end subroutine
      subroutine sub2(ll,n)
        logical(4)::ll
        integer(4)::n
        integer(4),allocatable::al(:)
         if (ll) then
           allocate(al(n))
           if (size(al)/=n) print *,'error7'
         else
           print *,'error8'
         endif
         deallocate(al)
      end subroutine
      subroutine sub3(n)
        integer(4),allocatable::al(:)
        if (allocated(al)) deallocate(al)
      end subroutine

      subroutine sub(n)
       integer(4),allocatable::al(:)
        allocate(al(5:7))
        n=3
        call sub0(size(al),n)
        call sub1(n,lbound(al,1),ubound(al,1))
        call sub2(allocated(al),n)
        call sub3(n)
      end subroutine
