program main
logical*4, parameter::a(12) = (/ .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true./)
logical*4, parameter::b(3,2,2) = reshape(a, (/3,2,2/))
integer, parameter::z = 2
logical*4::c(3,2) = any(b,z)
logical*4::d(3,2)
integer::p(2)
integer::e(2) = shape(any(b,z))
integer::f = kind(any(b,z))
integer::i,j
d = any(b,z)

p = shape(any(b,z))
do i=1,3
do j=1,2
print*, c(i,j), '--', d(i,j)
if(c(i,j).neqv.d(i,j)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif
enddo
enddo

call check(e,p)
call check1(f, kind(any(b,z)))

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
