integer :: a(3,4)
integer :: b(3,4)
call zee(a,b)
contains
subroutine zee(x,y)
integer,dimension(-1:,:) :: x
integer,dimension(-1:,:) :: y 


do j=1,4
  do i=-1,1
    x(i,j) = i*j
  enddo
enddo

call sub(m,n)

do j=1,n
  do i=-1,m
    y(i,j) = x(i,j)
  enddo
enddo

write(6,*) x

end subroutine zee
end

subroutine sub(m,n)
integer*4 m,n
m=1
n=4
end subroutine
