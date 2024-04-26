subroutine sub(a,b)
real(8),dimension(1:1000) :: b
integer(8),dimension(1:1000) :: a
do i=1,1000
  a(i) = dnint(b(i))
enddo
end subroutine

real(8),dimension(1:1000) :: b
integer(8),dimension(1:1000) :: a
a = 0
b = 1
call sub(a,b)
end
