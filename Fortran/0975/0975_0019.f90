real :: a(50),b(50)

do i=1,50
 a(i) = i
enddo

b=0

call sub(a,b)
write(6,*) "a=",a
write(6,*) "b=",b
end

subroutine sub(a,b)
real :: a(50),b(50)
intent(in) :: a
intent(out) :: b

do i=1,50
 b(i) = a(i)
enddo

do i=1,20
 b(i) = 0
enddo

end subroutine
