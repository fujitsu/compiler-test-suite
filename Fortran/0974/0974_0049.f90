integer,dimension(10) :: a
do i=1,10
 a(i) = i
enddo
call zee(a)
end program
subroutine zee(x)
integer,dimension(-1:*) :: x
integer,dimension(10) :: y

y=0

do i=1,6
  y(i) = x(i)
enddo


write(6,*) "x(-1)=",x(-1)
write(6,*) "y=",y

end subroutine
