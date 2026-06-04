    module mod
     integer(4),parameter::n=11
     integer(4),dimension(n,n)::a0,b0,c0,a1,b1,c1
     integer(4)::i
     contains
      subroutine sub3()
        if (any(a0/=a1)) print *,"fail"
        if (any(b0/=b1)) print *,"fail"
        if (any(c0/=c1)) print *,"fail"
      end subroutine
    end module

    program ompv2
     use mod
      i=0
      call sub0()
      i=0
      call sub1()
      call sub3()
      print *,'pass'
    end program

    recursive subroutine sub0()
     use mod
      i=i+1
      if (i>n) return
      a0(:,i)=(/(i*10+j,j=1,n)/)
      b0(1:n:5,i)=a0(1:n:5,i)
      b0(2:n:5,i)=a0(2:n:5,i)
      b0(3:n:5,i)=a0(3:n:5,i)
      b0(4:n:5,i)=a0(4:n:5,i)
      b0(5:n:5,i)=a0(5:n:5,i)
      b0(6:n:5,i)=a0(6:n:5,i)
      c0(n  :1:-5,i)=b0(n  :1:-5,i)
      c0(n-1:1:-5,i)=b0(n-1:1:-5,i)
      c0(n-2:1:-5,i)=b0(n-2:1:-5,i)
      c0(n-3:1:-5,i)=b0(n-3:1:-5,i)
      c0(n-4:1:-5,i)=b0(n-4:1:-5,i)
      c0(n-5:1:-5,i)=b0(n-5:1:-5,i)
      call sub0()
    end subroutine

    recursive subroutine sub1()
     use mod
      i=i+1
      if (i>n) return
!$omp parallel workshare
      a1(:,i)=(/(i*10+j,j=1,n)/)
      b1(1:n:5,i)=a1(1:n:5,i)
      b1(2:n:5,i)=a1(2:n:5,i)
      b1(3:n:5,i)=a1(3:n:5,i)
      b1(4:n:5,i)=a1(4:n:5,i)
      b1(5:n:5,i)=a1(5:n:5,i)
      b1(6:n:5,i)=a1(6:n:5,i)
      c1(n  :1:-5,i)=b1(n  :1:-5,i)
      c1(n-1:1:-5,i)=b1(n-1:1:-5,i)
      c1(n-2:1:-5,i)=b1(n-2:1:-5,i)
      c1(n-3:1:-5,i)=b1(n-3:1:-5,i)
      c1(n-4:1:-5,i)=b1(n-4:1:-5,i)
      c1(n-5:1:-5,i)=b1(n-5:1:-5,i)
!$omp end parallel workshare
      call sub1()
    end subroutine
