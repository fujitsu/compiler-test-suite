program main
  real(kind=4),dimension(10) :: res
  integer(kind=4),dimension(10) :: c,d,e

  do i=1,2
     call test(c,d,res,1,e)
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,d,res,n1,e)
  real(kind=4),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d,e

  do i=1,n1
     a(i) = 0_4
     b(i) = i * 2
     c(i) = i
     d(i) = i
     res(i) = b(i)
     if (i .gt. 10/2) then
       e(i) = 1
     else
       e(i) = 0
     endif
     if (i .lt. 10/2) then
       res(i) = 0_4
     endif
  enddo
  res(n1) = 0_4
end subroutine init


subroutine dummy(a)
   real(kind=4),dimension(1:10) :: a
end subroutine 

subroutine test(c,d,res,indx,e)
  real(kind=4),dimension(1:10) :: a,b,res
  integer(kind=4),dimension(1:10) :: c,d,e


  call init(a,b,c,d,res,10,e)



  do i=2,10
   if (e(i) .eq. 1) then
    a(c(i)-indx) = b(d(i)-indx)
   endif
  enddo
 
  call dummy(a)


  do i=1,10
    if (a(i) .ne. res(i)) then
      print *, "NG";
    endif
  enddo

end subroutine test
