program main
  real(8),dimension(1:64) :: a,c
  real(8),dimension(1:64,1:10) :: b
  real(8),dimension(1:64) :: res

  call init(a,b,c,res)
  call test(a,b,c,64,10,8)

  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,res)
  real(8),dimension(1:64) :: a,c
  real(8),dimension(1:64,1:10) :: b
  real(8),dimension(1:64) :: res

  do i=1,64
     a(i) = 0_8
     c(i) = 1_8
     res(i) = 0_8
  enddo
  do j=1,10
  do i=1,64
     b(i,j) = i+j
     res(i) = res(i) + b(i,j) + c(i)
  enddo
  enddo
end subroutine init

subroutine test(a,b,c,n,m,nways)
  real(8),dimension(1:n) :: a,c
  real(8),dimension(1:n,1:m) :: b
  integer(4)::nways
  
  do j=1,m
     do i=1,n
        a(i) = a(i) + b(i,j) + c(i)
     enddo
  enddo

end subroutine test
