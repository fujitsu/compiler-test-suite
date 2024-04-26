    module C
     contains
     subroutine F(i,k)
      integer(8)::k
       k = k + i**2
       if (i==10.and.G(k)) print *,'error1'
     end subroutine F
     logical(1) function G(k)
      integer(8)::k
       G = k /= 385
     end function G
    end module C

    module B
     use C
     contains
     subroutine D(n,l)
       integer(2)::n
       logical(1)::l
       n=n*2
       l=.false..or.l
       call E()
       call H()
      contains
      subroutine E()
       integer(8)::k
        k=0
        do i=1,n
          call F(i,k)
        enddo
        l = G(k)
        if (l) print *,'error2'
      end subroutine E
      subroutine H()
       integer(8)::k
        k=0
        do i=1,n
          call F(i,k)
        enddo
        l = G(k)
        if (l) print *,'error3'
      end subroutine H
     end subroutine D
    end module B

    program A
     use B
     integer(2)::n
     logical(1)::l
      n=5
      l=.true.
      call D(n,l)
      print *,'pass'
    end program A
