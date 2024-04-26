subroutine sub(a,n)
  real*4 a(n,n)

  do concurrent(j=1:n)
     do i=2,n
        a(i,j) = a(i,j) + 1
     enddo
     do i=2,n
        a(i,j) = a(i,j) + 2
     enddo
  enddo
end subroutine sub

program main
  parameter(n=200)
  real*4 a(n,n)

  call init(a,n)
  call sub(a,n)
  print *,sum(a)

end program main

subroutine init(a,n)
  real*4 a(n,n)
  do j=1,n
     do i=1,n
        a(i,j)=i+10
     enddo
  enddo
end subroutine init
