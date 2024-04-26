#define N 7
#define NN 99
subroutine sub(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c


  do i=1,N
     a(i) = b(i) + c(i)
  enddo
  
end subroutine sub


subroutine sub2(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c

  do i=1,N
     a(i) = b(i) + c(i)
  enddo
  
end subroutine sub2

subroutine sub3(a,b,n)
  real(8),dimension(1:n) :: a,b


  a = b
  
end subroutine sub3

subroutine sub4(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c


  do i=1,n
     a(i) = b(i) + c(i)
  enddo
  
end subroutine sub4

subroutine sub5(a,b,c,n)
  real(8),dimension(1:n) :: a,b,c


  do i=1,NN
     a(i) = b(i) + c(i)
  enddo
  
end subroutine sub5

program main
  real(8),dimension(1:N) :: a,b,c
  real(8),dimension(1:NN) :: a2,b2,c2

  a = 0.
  b = 1.
  c = 1.

  call sub(a,b,c,N)
  do i=1,N
     if (a(i) .ne. 2.) then
        print *,"NG"
     endif
  enddo

  a = 0.
  b = 1.
  c = 1.

  call sub2(a,b,c,N)
  do i=1,N
     if (a(i) .ne. 2.) then
        print *,"NG"
     endif
  enddo

  a = 0.
  b = 1.
  c = 1.

  call sub3(a,b,N)
  do i=1,N
     if (a(i) .ne. 1.) then
        print *,"NG"
     endif
  enddo

  a = 0.
  b = 1.
  c = 1.

  call sub4(a,b,c,N)
  do i=1,N
     if (a(i) .ne. 2.) then
        print *,"NG"
     endif
  enddo

  a2 = 0.
  b2 = 1.
  c2 = 1.

  call sub5(a2,b2,c2,NN)
  do i=1,NN
     if (a2(i) .ne. 2.) then
        print *,"NG"
     endif
  enddo
  
  print *,"OK"
  
end program main
