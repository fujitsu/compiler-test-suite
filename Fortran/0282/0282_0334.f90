Program Main
integer*4,dimension(2,3,2,1)::a
integer*4,parameter, dimension (2,3,2,1) :: b = reshape((/0_4,-30_4,-100_4,-50_4,4_4,5_4,8_4,-11_4, &
                                   6_4,-3_4,2_4,-400_4/), (/2,3,2,1/))
logical,parameter::m = .false.
integer*4,parameter,dimension(1) :: c = minval(b ,mask = m)

integer*4,dimension(1) :: d
integer,parameter::p = kind(minval(b,mask = m))
a = reshape((/0_4,-30_4,-100_4,-50_4,4_4,5_4,8_4,-11_4,6_4,-3_4,2_4,-400_4/), (/2,3,2,1/))
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

