     subroutine sub02(i,k)
      integer(8)::k
       k = k + i**2
     end subroutine sub02
     logical(1) function lfunc(k)
      integer(8)::k
       lfunc = k /= 385
     end function lfunc

    module mod0
     logical(1),external::lfunc
     contains
     subroutine sub00(n,l)
       integer(2)::n
       logical(1)::l
       n=n*2
       l=.false..or.l
       call sub01()
      contains
      subroutine sub01()
       integer(8)::k
        k=0
        do i=1,n
          call sub02(i,k)
        enddo
        l = lfunc(k)
        if (l) print *,'error'
      end subroutine sub01
     end subroutine sub00
    end module mod0

    program main
     use mod0
     integer(2)::n
     logical(1)::l
      n=5
      l=.true.
      call sub00(n,l)
      print *,'pass'
    end program
