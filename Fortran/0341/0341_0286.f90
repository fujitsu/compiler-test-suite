subroutine sub1(a,b,n)
  real*4 a(n,n,n),b(n,n,n)

  do concurrent(k=1:n)
     do j=1,n
        do i=2,n
           a(i,j,k) = a(i,j,k) + 1
        enddo
        do i=2,n
           a(i,j,k) = b(i,j,k) + a(i-1,j,k)
        enddo
     enddo
  enddo

end subroutine sub1

subroutine sub2(a,b,n)
  real*4 a(n,n,n),b(n,n,n)

  do k=1,n
     do concurrent (j=1:n)
        do i=2,n
           a(i,j,k) = a(i,j,k) + 1
        enddo
        do i=2,n
           a(i,j,k) = b(i,j,k) + a(i-1,j,k)
        enddo
     enddo
  enddo

end subroutine sub2

program main
  parameter(n=50)
  real*4 a(n,n,n),b(n,n,n)

  call init(a,b,n)
  call sub1(a,b,n)
  print *,sum(a)

  call init(a,b,n)
  call sub2(a,b,n)
  print *,sum(a)

end program main

subroutine init(a,b,n)
  real*4 a(n,n,n),b(n,n,n)

  do k=1,n
     do j=1,n
        do i=1,n
           a(i,j,k)=i+10
           b(i,j,k)=i+20
        enddo
     enddo
  enddo
end subroutine init
