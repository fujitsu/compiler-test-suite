#define N_BASE 100000

subroutine test1(a,b,c,n)
  real(8),dimension(n) :: a,b,c
  integer(4) :: n
  do i=1,n
     s = a(i)
     if (c(i)  > 0   ) then
        s = a(i)+c(i)
     endif
     b(i) = b(i) + s
  enddo
end subroutine test1

subroutine test2(a,b,c)
  integer(4),parameter :: n=N_BASE-1
  real(8),dimension(n) :: a,b,c
  do i=1,n
     s = a(i)
     if (c(i)  > 0   ) then
        s = a(i)+c(i)
     endif
     b(i) = b(i) + s
  enddo
end subroutine test2

subroutine test3(a,b,c)
  integer(4),parameter :: n=N_BASE
  real(8),dimension(n) :: a,b,c
  do i=1,n
     s = a(i)
     if (c(i)  > 0   ) then
        s = a(i)+c(i)
     endif
     b(i) = b(i) + s
  enddo
end subroutine test3

subroutine test4(a,b,c)
  integer(4),parameter :: n=N_BASE+1
  real(8),dimension(n) ::  a,b,c
  do i=1,n
     s = a(i)
     if (c(i)  > 0   ) then
        s = a(i)+c(i)
     endif
     b(i) = b(i) + s
  enddo
end subroutine test4

program main
  integer(4),parameter :: n=N_BASE+1
  real(8),dimension(n)::  a,b,c,bb

  call init(a,b,c,bb,n)
  call test1(a,b,c,n)
  call result(a,b,c,bb,n)

  call init(a,b,c,bb,n)
  call test2(a,b,c)
  call result(a,b,c,bb,N_BASE-1)

  call init(a,b,c,bb,n)
  call test3(a,b,c)
  call result(a,b,c,bb,N_BASE)

  call init(a,b,c,bb,n)
  call test4(a,b,c)
  call result(a,b,c,bb,N_BASE+1)

end program main

subroutine init(a,b,c,bb,n)
  real(8),dimension(n) ::  a,b,c,bb
  integer(4) :: n
  do i=1,n
     a(i)  = i
     b(i)  = i+n
     bb(i) = i+n
     c(i)  = i+n*2
  enddo
end subroutine init

subroutine result(a,b,c,bb,n)
  real(8),dimension(n)::  a,b,c,bb
  integer(4) :: n
  
  interface
     logical function is_equal_r8(x,y)
       real(8)::x,y
     end function is_equal_r8
  end interface

  do i=1,n
     s = a(i)
     if (c(i)  > 0   ) then
        s = a(i)+c(i)
     endif
     bb(i) = bb(i) + s
  enddo

  error = 0
  do i=1, n
     if (.not.is_equal_r8(b(i), bb(i))) then
        print *,b(i),bb(i)
        error = error+1
     endif
  enddo

  if (error.eq.0) then
     print *,"ok"
  else
     print *,"ng",error
  endif

end subroutine result

logical function is_equal_r8(x,y)
  real(8)::x,y
  is_equal_r8 = ( abs(x-y)/abs(x) .lt. 1.0E-6)
end function is_equal_r8
