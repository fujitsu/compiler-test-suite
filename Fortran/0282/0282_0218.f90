program main
real*4, parameter::a(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                            5.0_4, 6.0_4, 7.0_4, 8.0_4/)
real*4, parameter::b(2, 4) = reshape(a, (/2,4/))
real*4, parameter::c(12) = (/41.0_4, 42.0_4, 43.0_4, 44.0_4, &
                             45.0_4, 46.0_4, 47.0_4, 48.0_4, &
                                                         49.0_4, 50.0_4, 51.0_4, 52.0_4/)
real*4, parameter::d(4, 0) = reshape(c, (/4,0/))
integer::m(2)
integer::g(2) = shape(matmul(b,d))
integer::h = kind(matmul(b,d))
m = shape(matmul(b,d))

call check(g,m)
call check1(h, kind(matmul(b,d)))

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
