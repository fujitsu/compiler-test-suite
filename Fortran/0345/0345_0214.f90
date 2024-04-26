    module mod
     contains
      subroutine isub(j,i)
        j = i**2
      end subroutine
      function ifun0(n)
        ii=0
        do i=1,n
          call isub(j,i)
          ii = ii + j
        enddo
        ifun0=ii
      end function
      subroutine sub0(ii,n,ll)
        logical::ll
        ii = ifun0(n)
        ll = lfun(ii,385)
      end subroutine
      logical function lfun(ii,n)
        lfun = ii/=n
      end function
    end module

    program main
     use mod
      logical :: ll
      n=10
      call sub0(ii,n,ll)
      if(ll) print *,'error ii -> ',ii
      print *,'pass'
    end program
