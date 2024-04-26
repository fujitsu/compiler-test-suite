Program Main
integer*1,dimension(2,3,2,1)::a
integer*1,parameter, dimension (2,3,2,1) :: b = reshape((/0_1,-30_1,-100_1,-50_1,4_1,5_1,8_1,-11_1, &
                                   6_1,-3_1,2_1,-40_1/), (/2,3,2,1/))
logical,parameter::m = .true.
integer*1,parameter,dimension(1) :: c = minval(b ,mask = m)

integer*1,dimension(1) :: d
integer,parameter::p = kind(minval(b,mask = m))
a = reshape((/0_1,-30_1,-100_1,-50_1,4_1,5_1,8_1,-11_1,6_1,-3_1,2_1,-40_1/), (/2,3,2,1/))
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

