program main
logical*1, parameter::a(12) = (/ .true._1, .false._1,  .true._1,  .true._1, &
                                .false._1,  .true._1,  .true._1, .false._1, &
							     .true._1, .false._1,  .true._1,  .true._1/)
logical*1, parameter::b(3,4) = reshape(a, (/3,4/))
integer, parameter::z = 2
logical*1::c(3) = all(b,z)
logical*1::d(3)
integer::e(1) = shape(all(b,z))
integer::f = kind(all(b))
integer::i
d = all(b,z)
do i=1,3
print*, c(i), '--', d(i)
if(c(i).neqv.d(i)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif
enddo

call check(e, shape(all(b,z)))
call check1(f, kind(all(b,z)))

end

subroutine check(x, y)
integer x(1), y(1)
integer::i
print*, x,'--',y
do i=1,1
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
