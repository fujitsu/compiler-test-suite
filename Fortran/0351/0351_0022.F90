program main
  real(kind=8),dimension(64) :: a,b,dest
  call init(a,b,dest,64)
  do i=1,2
     call test(a,b,dest)
  enddo
  do i=1,64/2
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

subroutine init(a,b,dest,n1)
  real(kind=8),dimension(1:n1) :: a,b,dest

  do i=1,n1/2
     dest(i) = 0
     a(i) = i
     b(i) = i+1
  enddo

  do i=(n1/2)+1,n1
     dest(i) = 0
     a(i) = i+1
     b(i) = i
  enddo
end subroutine init


subroutine test(a,b,dest)
  real(kind=8), dimension(1:64) :: a,b,dest

  do i=1,64
     if(.not.(a(i) .lt. b(i))) then
       dest(i) = b(i)		
     else			
       dest(i) = a(i)	
     endif
  enddo
end subroutine test
