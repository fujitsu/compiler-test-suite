program main
logical*8, parameter::a(24) = (/ .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true., &
                                 .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true. /)
logical*8, parameter::b(3,4,2) = reshape(a, (/3,4,2/))
integer,parameter::c = 2
integer::d(3,2) = count(b,c)
integer::e(3,2)
integer::i,j
integer::m(2)
integer::n(2) = shape(count(b,c))
integer::o = kind(count(b,c))
e = count(b,c)
m = shape(count(b,c))

do i=1,3
do j=1,2
print*, d(i,j), '--', e(i,j)
if(d(i,j).ne.e(i,j)) then
print*, '??? (Error: L->I) ???'
else
print*, 'L -> I'
endif
enddo
enddo

call check(n,m)
call check1(o, kind(count(b,c)))

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
