#define N 256

program main
  real(kind=2),dimension(N) :: dest,a,b
  call init(dest,a,b)
  do i=1,2
     call test(dest,a,b)
  enddo
  if(dest(1) .ne. a(1)) then
     print *, "NG"
  endif
  do i=2,N/2
     if(a(i) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  do i=N/2+1,N
     if(b(i) .ne. dest(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,a,b)
  real(kind=2),dimension(1:N) :: dest,a,b
  dest(1) = 0
  a(1) = 1
  b(1) = 1
      
  do i=2,N/2
     dest(i) = 0
     a(i) = i+1
     b(i) = i
  enddo
  do i=N/2+1,N
     dest(i) = 0
     a(i) = i
     b(i) = i+1
  enddo
end subroutine init

subroutine test(dest,a,b)
  real(kind=2), dimension(N) :: dest,a,b
  do i=1,N
     if(a(i) .ge. b(i)) then
       dest(i) = a(i)		
     else			
       dest(i) = b(i)	
     endif
  enddo
end subroutine test
