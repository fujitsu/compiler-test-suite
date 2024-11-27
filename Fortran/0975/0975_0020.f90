real :: a(10),b(10)

do i=1,10
 a(i) = i
enddo

b=0

call sub(a,b)
write(6,*) "a=",a
write(6,*) "b=",b
end

subroutine sub(a,b)
real :: a(10),b(10)
intent(in) :: a
intent(inout) :: b


do i=1,10
 b(i) = 0
enddo

do i=1,4
 b(i) = a(i)
enddo

end subroutine
