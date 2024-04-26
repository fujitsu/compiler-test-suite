subroutine sub(a,b)
real(4),dimension(1:1000) :: b
integer(4),dimension(1:1000) :: a
do i=1,1000
  a(i) = nint(b(i))
enddo
end subroutine

real(4),dimension(1:1000) :: b
integer(4),dimension(1:1000) :: a
a = 0
b = 1
call sub(a,b)
end
