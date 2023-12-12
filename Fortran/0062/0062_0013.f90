!
subroutine opt_unroll0_r8(a,b,n)
real(kind=8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine opt_unroll1_r8(a,b,n)
real(kind=8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine opt_unroll2_r8(a,b,n)
real(kind=8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine opt_unroll10_r8(a,b,n)
real(kind=8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine init_array(a,b,n)
real(kind=8),dimension(1:n) :: a,b
a = 3._8
b = 4._8
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: a,b
real   (kind=8) :: r1,r2,r3,r4

call init_array(a,b,n)
call opt_unroll0_r8(a,b,n)
r1 = sum(a)
call init_array(a,b,n)
call opt_unroll1_r8(a,b,n)
r2 = sum(a)
call init_array(a,b,n)
call opt_unroll2_r8(a,b,n)
r3 = sum(a)
call init_array(a,b,n)
call opt_unroll10_r8(a,b,n)
r4 = sum(a)

if ((r1 == r2) .and. (r2 == r3) .and. (r3 == r4)) then
  print *,"ok"
else
  print *,"ng",r1,r2,r3,r4
endif
end program
