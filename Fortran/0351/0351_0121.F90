program main
  integer(kind=8),dimension(64) :: a,b,res
  integer(kind=4),dimension(64) :: c,d
  call init(a,b,c,d,res,64)
  do i=1,2
     call test(0_8,0_8,0_8,0_8,0_8,0_8,a,b,c,d)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,d,res,n1)
  integer(kind=8),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d

  do i=1,n1
     a(i) = 0_8
     b(i) = i * 2
     c(i) = i
     d(i) = i
     res(i) = i * 2
  enddo
  res(1) = 0_8
end subroutine init


subroutine test(dummy1,dummy2,dummy3,dummy4,dummy5,dummy6,a,b,c,d)
integer(kind=8)::dummy1,dummy2,dummy3
integer(kind=8)::dummy4,dummy5,dummy6
integer(kind=8),dimension(1:64) :: a,b
integer(kind=4),dimension(1:64) :: c,d


  do i=1,64-1
    a(c(i)+1) = b(d(i)+1)
  enddo
end subroutine test
