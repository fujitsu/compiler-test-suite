program main
  real(kind=8),dimension(64) :: res
  integer(kind=4),dimension(64) :: c,d,e

  do i=1,2
     call test(c,d,res,e)
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,d,res,e)
  real(kind=8),dimension(1:64) :: a,b,res
  integer(kind=4),dimension(1:64) :: c,d,e

  do i=1,64
     a(i) = 0_8
     b(i) = i * 2
     c(i) = i
     d(i) = i
     if (i .gt. 64/2) then
       res(i) = b(i)
       e(i) = 1
     else
       res(i) = 0_8
       e(i) = 0_8
     endif
  enddo
end subroutine init


subroutine dummy(a)
   real(kind=8),dimension(1:64) :: a
end subroutine 

subroutine test(c,d,res,e)



  real(kind=8),allocatable,dimension(:) :: a,b

  real(kind=8),dimension(1:64) :: res
  integer(kind=4),dimension(1:64) :: c,d,e


  allocate(a(64))  
  allocate(b(64))  



  call init(a,b,c,d,res,e)



  do i=1,64
   if (e(i) .eq. 1) then
    a(c(i)) = b(d(i))
   endif
  enddo
 
  call dummy(a)


  do i=1,64
    if (a(i) .ne. res(i)) then
      print *, "NG";
    endif
  enddo



  deallocate(a)
  deallocate(b)


end subroutine test
