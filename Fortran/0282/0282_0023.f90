program main
real*4, parameter::a(12) = (/ 1.0_4, 2.0_4,  3.0_4,  4.0_4, &
                              4.0_4, 5.0_4,  6.0_4,  7.0_4, &
							  9.0_4, 6.0_4, 11.0_4, 12.0_4/)
real*4, parameter::b(4,3) = reshape(a, (/4,3/))
real*4, parameter::w(12) = (/ 11.0_4,  2.0_4,  3.0_4,  4.0_4, &
                               4.0_4, 15.0_4,  6.0_4,  7.0_4, &
							   9.0_4,  6.0_4, 11.0_4, 12.0_4/)
real*4, parameter::v(4,3) = reshape(w, (/4,3/))
integer, parameter::z = 2
logical*4::c(4) = all(b == v,z)
logical*4::d(4)
integer::i
integer::e(1) = shape(all(b == v,z))
integer::f = kind(all(b == v,z))
d = all(b == v,z)
do i=1,4
print*, c(i), '--', d(i)
if(c(i).neqv.d(i)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif
enddo

call check(e, shape(all(b == v,z)))
call check1(f, kind(all(b == v,z)))

end

subroutine check(x, y)
integer x(1), y(1)
print*, x,'--',y
if (x(1).ne.y(1)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
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