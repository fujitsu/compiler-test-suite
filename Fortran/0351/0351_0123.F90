program main
  real(kind=4),dimension(64) :: res
  integer(kind=4),dimension(64) :: c,d

  do i=1,2
     call test(c,d,res,1)
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,d,res,n1)
  real(kind=4),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d

  do i=1,n1
     a(i) = 0_4
     b(i) = i * 2
     c(i) = i
     d(i) = i
     res(i) = i * 2
  enddo
  res(n1) = 0_4
end subroutine init


subroutine dummy(a)
   real(kind=4),dimension(1:64) :: a
end subroutine 

subroutine test(c,d,res,indx)
  real(kind=4),dimension(1:64) :: a,b,res
  integer(kind=4),dimension(1:64) :: c,d


  call init(a,b,c,d,res,64)



  do i=2,64
    a(c(i)-indx) = b(d(i)-indx)
  enddo
 
  call dummy(a)


  do i=1,64
    if (a(i) .ne. res(i)) then
      print *, "NG";
    endif
  enddo

end subroutine test
