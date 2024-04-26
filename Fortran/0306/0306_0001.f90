subroutine sub(a,b)
real(8),dimension(1:2) :: a,b
real(8) :: tmp

10 do i=1,2
   a(i) = a(i) + b(i)
enddo

tmp = a(1) + a(2)
if (tmp .le. 1) goto 10

end subroutine sub

program main
real(8),dimension(1:2) :: a,b

a = -3
b = 1

call sub(a,b)

if (a(1) + a(2) .eq. 2) then
   print *, "ok"
else
   print *, "ng"
endif

end program main

