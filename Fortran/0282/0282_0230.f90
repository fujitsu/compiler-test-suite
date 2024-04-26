Program Main
integer*8,dimension(2,3,2,1)::a
integer*8,parameter, dimension (2,3,2,1) :: b = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8, &
                                   6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))
logical,parameter::m = .false.
integer*8,parameter,dimension(4) :: c = maxloc(b ,mask = m)

integer*8,dimension(4) :: d
integer,parameter::p = kind(maxloc(b,mask = m))
a = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8,6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))
d =  maxloc(a,mask = m)
do i = 1,4
print*, c(i), '---', d(i)
if ( c(i).ne. d(i) ) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'
endif
end do
call check(p, kind(maxloc(a,mask = m)))

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
