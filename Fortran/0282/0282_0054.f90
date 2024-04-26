program main
logical*4, parameter::a(192) =(/ .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true., &
								 .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true., &
								 .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true., &
								 .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true., &
								 .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true., &
								 .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true., &
								 .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true., &
								 .true.,  .true.,  .true.,  .true.,.false., .false., .false., .false., &
								 .true., .false.,  .true.,  .true., .true.,  .true.,  .true.,  .true., &
								.false., .false., .false., .false., .true., .false.,  .true.,  .true./)
logical*4, parameter::b(3,2,2,2,2,2,2) = reshape(a, (/3,2,2,2,2,2,2/))
integer,parameter::c = 2
integer::d(3,2,2,2,2,2) = count(b,c)
integer::e(3,2,2,2,2,2)
integer::i,j,k,l,m,q
integer::z(6)
integer::n(6) = shape(count(b,c))
integer::o = kind(count(b,c))
e = count(b,c)
z = shape(count(b,c))
do i=1,3
do j=1,2
do k=1,2
do l=1,2
do m=1,2
do q=1,2
print*, d(i,j,k,l,m,q), '--', e(i,j,k,l,m,q)
if(d(i,j,k,l,m,q).ne.e(i,j,k,l,m,q)) then
print*, '??? (Error: L->I) ???'
else
print*, 'L -> I'
endif
enddo
enddo
enddo
enddo
enddo
enddo

call check(n,z)
call check1(o, kind(count(b,c)))

end

subroutine check(x, y)
integer x(6), y(6)
integer::i
print*, x,'--',y
do i=1,6
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
