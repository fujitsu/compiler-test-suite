subroutine ss0(i)
parameter(j=-3)
integer a
real(4)::b3(j,i,j)
write(161,*)1
b3=1.
write(161,*)2
end
do i=-3,3
call ss0(i)
end do
print *,'pass'
end
