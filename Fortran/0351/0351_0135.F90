program main
  real(kind=8),dimension(64) :: a,b,res
  common //a,b

  call init(res,2,1)

  do i=1,2
     call test(2,1)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(res,k,indx)
  real(kind=8),dimension(1:64) :: a,b,res
  integer :: k,indx
  common //a,b


  do i=1,64
     a(i) = 0._8
     b(i) = 0._8
     res(i) = 0._8
  enddo

  do i=1,64-1,k
     b(i+indx) = i * 2._8
     res(i+indx) = i * 2._8
  enddo
end subroutine init


subroutine test(k,indx)
  real(kind=8),dimension(1:64) :: a,b
  integer :: k,indx
  common //a,b


  do i=1,64-1,k
    a(i+indx) = b(i+indx)
  enddo
 
end subroutine test
