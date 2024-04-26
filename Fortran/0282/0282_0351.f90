Program Main
real*8,dimension(2,3,2,1)::a
real*8,parameter, dimension (2,3,2,1) :: b = reshape((/0.0_8,-30.0_8,-100.0_8,-50.0_8,4.0_8,5.0_8,8.0_8,-11.0_8, &
                                   6.0_8,-3.0_8,2.0_8,-400.0_8/), (/2,3,2,1/))
logical,parameter::m = .true.
real*8,parameter,dimension(1) :: c = minval(b ,mask = m)

real*8,dimension(1) :: d
integer,parameter::p = kind(minval(b,mask = m))
a = reshape((/0.0_8,-30.0_8,-100.0_8,-50.0_8,4.0_8,5.0_8,8.0_8,-11.0_8,6.0_8,-3.0_8,2.0_8,-400.0_8/), (/2,3,2,1/))
d =  minval(a,mask = m)
do i = 1,1
print*, c(i), '---', d(i)
if ( c(i).ne. d(i) ) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
end do
call check(p, kind(minval(a,mask = m)))

end

subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine

