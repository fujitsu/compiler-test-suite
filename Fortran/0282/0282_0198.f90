program main
logical*4, parameter::a(8) = (/.true., .true. , .false., .false. , &
                               .true., .false., .true. , .false. /)
logical*4, parameter::b(2, 4) = reshape(a, (/2,4/))
logical*4, parameter::c(12) = (/.true. , .false., .false., .true. , &
                                .false., .false., .true. , .true. , &
								.true. , .true. , .false., .true. /)
logical*4, parameter::d(4, 3) = reshape(c, (/4,3/))

logical*4::e(2,3) = matmul(b, d)
logical*4::f(2,3)
integer::i,j

integer::m(2)
integer::g(2) = shape(matmul(b,d))
integer::h = kind(matmul(b,d))
f = matmul(b ,d)
m = shape(matmul(b,d))

do i =1,2
do j =1,3
print*, e(i,j), '--', f(i,j)
if(e(i,j).neqv.f(i,j)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo

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
