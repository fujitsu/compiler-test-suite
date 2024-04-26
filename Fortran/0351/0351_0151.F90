program main
  real(kind=8),dimension(64) :: dest,a,b
  call init(dest,a,b)
  do i=1,2
     call test(dest,a,b)
  enddo
  do i=1,64/2
     if(b(i) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  do i=64/2+1,64
     if(a(i) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,a,b)
  real(kind=8),dimension(1:64) :: dest,a,b

  do i=1,64/2
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
  real(kind=8), dimension(64) :: dest,a,b

  do i=1,64
     if(a(i) .lt. b(i)) then
       dest(i) = a(i)		
     else			
       dest(i) = b(i)	
     endif
  enddo
end subroutine test
