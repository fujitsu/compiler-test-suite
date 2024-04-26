program main
  integer(kind=8),dimension(64) :: dest,a,b
  call init(dest,a,b)
  do i=1,2
     call test(dest,a,b)
  enddo
  if(dest(1) .ne. a(1)) then
      print *, "NG"
  endif
  do i=2,64/2
     if(a(i) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  do i=64/2+1,64
     if(b(i) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,a,b)
  integer(kind=8),dimension(1:64) :: dest,a,b
  dest(1) = 0
  a(1) = 1
  b(1) = 1
      

  do i=2,64/2
     dest(i) = 0
     a(i) = i+1
     b(i) = i
  enddo

  do i=64/2+1,64
     dest(i) = 0
     a(i) = i
     b(i) = i+1
  enddo
end subroutine init


subroutine test(dest,a,b)
  integer(kind=8), dimension(64) :: dest,a,b

  do i=1,64
     if(a(i) .ge. b(i)) then
       dest(i) = a(i)		
     else			
       dest(i) = b(i)	
     endif
  enddo
end subroutine test
