subroutine collaps1(a,b,c,n)
  real*4 a(n,n),b(n,n),c(n,n)
  do concurrent(j=1:n)
    do i=1,n
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
end

subroutine collaps2(a,b,c,n)
  real*4 a(n,n),b(n,n),c(n,n)
  do j=1,n
    do concurrent(i=1:n)
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
end

subroutine collaps3(a,b,c,n)
  real*4 a(n,n),b(n,n),c(n,n)
  do concurrent(j=1:n)
    do concurrent(i=1:n)
      a(i,j) = b(i,j) + c(i,j)
    enddo
  enddo
end


program main
  parameter(n=200)
  real*4 a(n,n),b(n,n),c(n,n)

  call init(a,b,c,n)
  call collaps1(a,b,c,n)
  print *,sum(a)

  call init(a,b,c,n)
  call collaps2(a,b,c,n)
  print *,sum(a)

  call init(a,b,c,n)
  call collaps3(a,b,c,n)
  print *,sum(a)

end program main


subroutine init(a,b,c,n)
  real*4 a(n,n),b(n,n),c(n,n)

  do j=1,n
    do i=1,n
       a(i,j)=i+j+10
       b(i,j)=i+j+20
       c(i,j)=i+j+30
    enddo
  enddo
end subroutine init

