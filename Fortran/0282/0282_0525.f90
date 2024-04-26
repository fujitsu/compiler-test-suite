program main
complex*16, parameter::a(12) = (/(1.0_8, 1.0_8),   (2.0_8, 2.0_8),   (3.0_8, 3.0_8),   (4.0_8, 4.0_8), &
                                 (5.0_8, 5.0_8),   (6.0_8, 6.0_8),   (7.0_8, 7.0_8),   (8.0_8, 8.0_8), &
							     (9.0_8, 9.0_8), (10.0_8, 10.0_8), (11.0_8, 11.0_8), (12.0_8, 12.0_8) /)
complex*16, parameter::b(4,3) = reshape(a, (/4,3/))
complex*16::c(3,4) = transpose(b)
complex*16::d(3,4)
integer::g(2)
integer::e(2) = shape(transpose(b))
integer::f = kind(transpose(b))
integer::i,j
d = transpose(b)

g = shape(transpose(b))
do i=1,3
do j=1,4
print*, c(i,j), '--', d(i,j)
if(c(i,j).ne.d(i,j)) then
print*, '??? (Error: C->C) ???'
else
print*, 'C -> C'
endif
enddo
enddo

call check(e,g)
call check1(f, kind(transpose(b)))

end

subroutine check(x, y)
integer x(2)
integer y(2)
integer::i
print*, 'SHAPE is: '
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
