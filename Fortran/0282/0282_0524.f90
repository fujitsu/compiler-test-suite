program main
complex*8, parameter::a(12) = (/(1.0_4, 1.0_4),   (2.0_4, 2.0_4),   (3.0_4, 3.0_4),   (4.0_4, 4.0_4), &
                                (5.0_4, 5.0_4),   (6.0_4, 6.0_4),   (7.0_4, 7.0_4),   (8.0_4, 8.0_4), &
							    (9.0_4, 9.0_4), (10.0_4, 10.0_4), (11.0_4, 11.0_4), (12.0_4, 12.0_4) /)
complex*8, parameter::b(4,3) = reshape(a, (/4,3/))
complex*8::c(3,4) = transpose(b)
complex*8::d(3,4)
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
