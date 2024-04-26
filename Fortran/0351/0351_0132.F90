program main
  integer(kind=4),dimension(64) :: res

  do i=1,2
     call test(res,2,1)
  enddo

  print *, "OK"
end program main

subroutine init(a,b,res,k,indx)
  integer(kind=4),dimension(1:64) :: a,b,res
  integer(kind=4) :: k,indx

  do i=1,64
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo

  do i=2,64,k
     b(i-indx) = i * 2
     res(i-indx) = i * 2
  enddo
end subroutine init


subroutine dummy(a)
   integer(kind=4),dimension(1:64) :: a
end subroutine 

subroutine test(res,k,indx)

  integer(kind=4),allocatable,dimension(:) :: a,b



  integer(kind=4),dimension(1:64) :: res
  integer(kind=4) :: k,indx


  allocate(a(64))  
  allocate(b(64))  



  call init(a,b,res,k,indx)



  do i=2,64,k
    a(i-indx) = b(i-indx)
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
