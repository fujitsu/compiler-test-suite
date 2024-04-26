subroutine collaps1(a,b,c,n,m)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  do concurrent(j=1:n, m(j).ne.0)
    do i=1,n
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
end

subroutine collaps2(a,b,c,n,m)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  do j=1,n
    do concurrent(i=1:n, m(i).ne.0)
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
end

subroutine collaps3(a,b,c,n,m)
  real*4 a(n,n),b(n,n),c(n,n),m(n)
  do concurrent(j=1:n, m(j).ne.0)
    do concurrent(i=1:n, m(i).ne.0)
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
end


program main
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n),m(n)

  call init(a,b,c,n,m)
  call collaps1(a,b,c,n,m)
  print *,sum(a)

  call init(a,b,c,n,m)
  call collaps2(a,b,c,n,m)
  print *,sum(a)

  call init(a,b,c,n,m)
  call collaps3(a,b,c,n,m)
  print *,sum(a)

end program main


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
