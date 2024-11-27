integer,dimension(10) :: a
do i=1,10
 a(i) = i
enddo
call zee(a)
end program
subroutine zee(x)
integer,dimension(-1:*) :: x

do i=-1,7
  x(i) = 0
enddo


write(6,*) "x(-1)=",x(-1)

end subroutine
