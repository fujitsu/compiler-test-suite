program main
integer*8, parameter::a(12) = (/1_8,  2_8,  3_8,  4_8, &
                                5_8,  6_8,  7_8,  8_8, &
                                                            9_8, 10_8, 11_8, 12_8 /)
integer*8, parameter::b(4,0) = reshape(a, (/4,0/))

integer::g(2)
integer::e(2) = shape(transpose(b))
integer::f = kind(transpose(b))

g = shape(transpose(b))

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
                 
