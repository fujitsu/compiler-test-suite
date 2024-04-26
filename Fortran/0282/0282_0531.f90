program main
logical*4, parameter::a(12) = (/ .true., .false.,  .true.,  .true., &
                             .false.,  .true.,  .true., .false., &
							  .true., .false.,  .true.,  .true./)
logical*4, parameter::b(4,3) = reshape(a, (/4,3/))
logical*4::c(3,4) = transpose(b)
logical*4::d(3,4)
integer::g(2)
integer::e(2) = shape(transpose(b))
integer::f = kind(transpose(b))
integer::i,j
d = transpose(b)
g = shape(transpose(b))

do i=1,3
do j=1,4
print*, c(i,j), '--', d(i,j)
if(c(i,j).neqv.d(i,j)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo

call check(e,g)
call check1(f, kind(transpose(b)))

end

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i=1,2
if (x(i).ne.y(i)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
end subroutine

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
