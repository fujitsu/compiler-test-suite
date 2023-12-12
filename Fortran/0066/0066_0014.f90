subroutine sub(a,b,n)
real(8),dimension(1:n) :: a,b
integer(8) i
do i=1,n
  a(i) = exp(b(i))
enddo
i = a(n)
if (i .eq. 22026) then
  write(6,*) "OK"
else
  write(6,*) "NG"
endif
end subroutine

real(8),dimension(10) :: a = (/ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0 /)
real(8),dimension(10) :: b = (/ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0 /)
call sub(a,b,10)
end
