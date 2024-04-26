subroutine interchange1
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,m)
  do concurrent(j=1:n, m(j).ne.0)
     do i=1,n
        a(idx1(i),idx2(j)) = a(i,j) + c(i,j)
     enddo
  enddo
  call output(a)
end subroutine interchange1

subroutine interchange2
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,m)
  do j=1,n
     do concurrent(i=1:n, m(i).ne.0)
        a(idx1(i),idx2(j)) = a(i,j) + c(i,j)
     enddo
  enddo
  call output(a)
end subroutine interchange2

subroutine interchange3
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  integer*8 idx1(n),idx2(n)
  call init(a,b,c,idx1,idx2,n,m)
  do concurrent(j=1:n, m(j).ne.0)
     do concurrent(i=1:n, m(i).ne.0)
        a(idx1(i),idx2(j)) = a(i,j) + c(i,j)
     enddo
  enddo
  call output(a)
end subroutine interchange3


program main
  call interchange1
  call interchange2
  call interchange3
end program main


subroutine init(a,b,c,idx1,idx2,n,m)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  integer*8 idx1(n),idx2(n)

  do j=1,n
     do i=1,n
        a(i,j)=i+j+10
        b(i,j)=i+j+20
        c(i,j)=i+j+30
        idx1(i)=i
     enddo
     m(j)=mod(j,3)
     idx2(j)=j
  enddo
end subroutine init

subroutine output(a)
  parameter(n=200)
  real*4 a(n,n)
  print *,sum(a)
end subroutine output
