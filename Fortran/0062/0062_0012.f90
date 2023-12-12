!
subroutine opt_eval_r8(a,b,c,n)
real(kind=8),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = a(i) * b(i) + a(i) * c(i)
enddo
end subroutine

subroutine opt_noeval_r8(a,b,c,n)
real(kind=8),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = a(i) * b(i) + a(i) * c(i)
enddo
end subroutine

subroutine init_array(a,b,c,n)
real(kind=8),dimension(1:n) :: a,b,c
a = 3._8
b = 4._8
c = 5._8
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: a,b,c
real   (kind=8) :: r1,r2

call init_array(a,b,c,n)
call opt_noeval_r8(a,b,c,n)
r1 = sum(a)
call init_array(a,b,c,n)
call opt_eval_r8(a,b,c,n)
r2 = sum(a)

if (r1 == r2) then
  print *,"ok"
else
  print *,"ng",r1,r2
endif
end program
