program main
  integer(kind=4),dimension(640) :: res

  do i=1,2
     call test(res)
  enddo

  print *, "OK"
end program main

subroutine init(a,b,res)
  integer(kind=4),dimension(1:640) :: a,b,res

  do i=1,640
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo

  do i=1,640,20
     b(i) = i * 2
     res(i) = i * 2
  enddo
end subroutine init


subroutine dummy(a)
   integer(kind=4),dimension(1:640) :: a
end subroutine 

subroutine test(res)

  integer(kind=4),allocatable,dimension(:) :: a,b



  integer(kind=4),dimension(1:640) :: res


  allocate(a(640))  
  allocate(b(640))  



  call init(a,b,res)



  do i=1,640,20
    a(i) = b(i)
  enddo
 
  call dummy(a)


  do i=1,640
    if (a(i) .ne. res(i)) then
      print *, "NG";
    endif
  enddo



  deallocate(a)
  deallocate(b)

end subroutine test
