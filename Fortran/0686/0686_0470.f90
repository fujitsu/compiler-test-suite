    program ompv2
     integer(4),parameter::n=11
     integer(4),dimension(n,n)::a0,b0,c0,a1,b1,c1
      i=0
      call sub0(a0,b0,c0,i,n)
      i=0
      call sub1(a1,b1,c1,i,n)
      if (any(a0/=a1)) print *,"fail"
      if (any(b0/=b1)) print *,"fail"
      if (any(c0/=c1)) print *,"fail"
      print *,'pass'
    end program

    recursive subroutine sub0(a,b,c,i,n)
     integer(4),dimension(n,n)::a,b,c
      i=i+1
      if (i>n) return
      a(:,i)=(/(i*10+j,j=1,n)/)
      b(1:n:5,i)=a(1:n:5,i)
      b(2:n:5,i)=a(2:n:5,i)
      b(3:n:5,i)=a(3:n:5,i)
      b(4:n:5,i)=a(4:n:5,i)
      b(5:n:5,i)=a(5:n:5,i)
      b(6:n:5,i)=a(6:n:5,i)
      c(n  :1:-5,i)=b(n  :1:-5,i)
      c(n-1:1:-5,i)=b(n-1:1:-5,i)
      c(n-2:1:-5,i)=b(n-2:1:-5,i)
      c(n-3:1:-5,i)=b(n-3:1:-5,i)
      c(n-4:1:-5,i)=b(n-4:1:-5,i)
      c(n-5:1:-5,i)=b(n-5:1:-5,i)
      call sub0(a,b,c,i,n)
    end subroutine

    recursive subroutine sub1(a,b,c,i,n)
     integer(4),dimension(n,n)::a,b,c
      i=i+1
      if (i>n) return
!$omp parallel workshare
      a(:,i)=(/(i*10+j,j=1,n)/)
      b(1:n:5,i)=a(1:n:5,i)
      b(2:n:5,i)=a(2:n:5,i)
      b(3:n:5,i)=a(3:n:5,i)
      b(4:n:5,i)=a(4:n:5,i)
      b(5:n:5,i)=a(5:n:5,i)
      b(6:n:5,i)=a(6:n:5,i)
      c(n  :1:-5,i)=b(n  :1:-5,i)
      c(n-1:1:-5,i)=b(n-1:1:-5,i)
      c(n-2:1:-5,i)=b(n-2:1:-5,i)
      c(n-3:1:-5,i)=b(n-3:1:-5,i)
      c(n-4:1:-5,i)=b(n-4:1:-5,i)
      c(n-5:1:-5,i)=b(n-5:1:-5,i)
!$omp end parallel workshare
      call sub1(a,b,c,i,n)
    end subroutine
