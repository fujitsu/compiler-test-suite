Program Main
integer*2,dimension(2,3,2,1)::a
integer*2,parameter, dimension (2,3,2,1) :: b = reshape((/0_2,-30_2,-100_2,-50_2,4_2,5_2,8_2,-11_2, &
                                   6_2,-3_2,2_2,-40_2/), (/2,3,2,1/))
logical,parameter::m = .true.
integer*2,parameter,dimension(1) :: c = minval(b ,mask = m)

integer*2,dimension(1) :: d
integer,parameter::p = kind(minval(b,mask = m))
a = reshape((/0_2,-30_2,-100_2,-50_2,4_2,5_2,8_2,-11_2,6_2,-3_2,2_2,-40_2/), (/2,3,2,1/))
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

