program main
  real(kind=4),dimension(64) :: res

  do i=1,2
     call test(res,2)
  enddo

  print *, "OK"
end program main

subroutine init(a,b,res,k)
  real(kind=4),dimension(1:64) :: a,b,res
  integer(kind=4) :: k

  do i=1,64
     a(i) = 0._4
     b(i) = 0._4
     res(i) = 0._4
  enddo

  do i=2,64,k
     b(i-1) = i * 2._4
     res(i-1) = i * 2._4
  enddo
end subroutine init


subroutine dummy(a)
   real(kind=4),dimension(1:64) :: a
end subroutine 

subroutine test(res,k)
  real(kind=4),dimension(1:64) :: a,b
  real(kind=4),dimension(1:64) :: res
  integer(kind=4) :: k


  call init(a,b,res,k)



  do i=2,64,k
    a(i-1) = b(i-1)
  enddo
 
  call dummy(a)


  do i=1,64
    if (a(i) .ne. res(i)) then
      print *, "NG";
    endif
  enddo


end subroutine test
