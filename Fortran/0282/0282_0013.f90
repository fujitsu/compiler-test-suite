program main
integer*4, parameter::a(12) = (/ 1_4, 2_4,  3_4,  4_4, &
                                 4_4, 5_4,  6_4,  7_4, &
							     9_4, 6_4, 11_4, 12_4/)
integer*4, parameter::b(4,3) = reshape(a, (/4,3/))
integer*4, parameter::w(12) = (/ 11_4,  2_4,  3_4,  4_4, &
                                  4_4, 15_4,  6_4,  7_4, &
							      9_4,  6_4, 11_4, 12_4/)
integer*4, parameter::v(4,3) = reshape(w, (/4,3/))
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
