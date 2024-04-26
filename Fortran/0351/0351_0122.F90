program main
  integer(kind=8),dimension(64) :: a,b,res
  integer(kind=4),dimension(64) :: c,d,e
  call init(a,b,c,d,res,64,e)
  do i=1,2
     call test(0_8,0_8,0_8,0_8,0_8,0_8,a,b,c,d,e)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,d,res,n1,e)
  integer(kind=8),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d,e

  do i=1,n1
     a(i) = 0_8
     b(i) = i * 2
     c(i) = i
     d(i) = i
     if (i .gt. 64/2) then
       e(i) = 1
       res(i) = b(i)
     else
       res(i) = 0_8
       e(i) = 0
     endif
  enddo
  res(64/2+1) = 0_8
  res(1) = 0_8
end subroutine init


subroutine test(dummy1,dummy2,dummy3,dummy4,dummy5,dummy6,a,b,c,d,e)
integer(kind=8)::dummy1,dummy2,dummy3
integer(kind=8)::dummy4,dummy5,dummy6
integer(kind=8),dimension(1:64) :: a,b
integer(kind=4),dimension(1:64) :: c,d,e


  do i=1,64-1
   if (e(i) .eq. 1) then
    a(c(i)+1) = b(d(i)+1)
   endif
  enddo
end subroutine test
