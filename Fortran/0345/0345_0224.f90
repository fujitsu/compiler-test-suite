    module mod1
     contains
      subroutine sub1m(n,jj)
        do i=1,n
          jj = jj+i**2
        enddo
      end subroutine
      logical function fun1m(ii,n) result(ll)
        ll = ii/=n
      end function
    end module

    subroutine sub0(n)
     use mod1
     logical::l1,l2,fun1
      ii=0
      jj=0
      call sub1(n,ii)
      call sub1m(n,jj)
      l1 = fun1(ii,55)
      l2 = fun1m(jj,385)
      if (l1.or.l2) print *,'error ii,jj ->',ii,jj
    end subroutine

    subroutine sub1(n,ii)
      do i=1,n
        ii = ii + i
      enddo
    end subroutine

    logical function fun1(ii,nn) result(ll)
      ll = ii .ne. nn
    end function

    program main
      n=10
      call sub0(n)
      print *,'pass'
    end program
