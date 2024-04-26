    module mod1
     contains
      subroutine sub1m(n,jj)
        do i=1,n
          jj = jj+i**2
        enddo
      end subroutine
      logical function fun1m(ii,n)
        fun1m = ii/=n
      end function
    end module

    module mod0
     use mod1
      contains
      logical function fun0(n)
       logical::l1,l2,fun1
        ii=0
        jj=0
        call sub1(n,ii)
        call sub1m(n,jj)
        l1 = fun1(ii,55)
        l2 = fun1m(jj,385)
        if (l1.or.l2) print *,'error l1,l2 ->',l1,l2
        fun0 = l1.or.l2
      end function
    end module

    subroutine sub1(n,ii)
      do i=1,n
        ii = ii + i
      enddo
    end subroutine

    logical function fun1(ii,nn)
      fun1 = ii .ne. nn
    end

    program main
     use mod0
      logical :: ll
      n=10
      ll = fun0(n)
      if (ll) print *,'error'
      print *,'pass'
    end program
