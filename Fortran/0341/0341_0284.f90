
subroutine collaps1
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  call init(a,b,c,n,m)
  do concurrent(j=1:n, m(j).ne.0)
    do i=1,n
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
  call output(a)
end

subroutine collaps2
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  call init(a,b,c,n,m)
  do j=1,n
    do concurrent(i=1:n, m(i).ne.0)
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
  call output(a)
end

subroutine collaps3
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  call init(a,b,c,n,m)
  do concurrent(j=1:n, m(j).ne.0)
    do concurrent(i=1:n, m(i).ne.0)
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
  call output(a)
end


program main
  call collaps1
  call collaps2
  call collaps3
end program main



subroutine output(a)
  parameter(n=200)
  real*4 a(n,n)
  print *,sum(a)
end subroutine output


subroutine init(a,b,c,n,m)
  real*4 a(n,n),b(n,n),c(n,n),m(n)

  do j=1,n
    do i=1,n
       a(i,j)=i+j+10
       b(i,j)=i+j+20
       c(i,j)=i+j+30
    enddo
    m(j)=mod(j,3)
  enddo
end subroutine init
