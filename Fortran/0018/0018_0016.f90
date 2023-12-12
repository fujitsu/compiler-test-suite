Program Main
integer*8,dimension(2,3,2,1)::a
integer*8,parameter, dimension (2,3,2,1) :: b = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8, &
                                   6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))
logical,parameter::m = .false.
integer*8,parameter,dimension(4) :: c = minloc(b ,mask = m,kind=8)

integer*8,dimension(4) :: d
integer,parameter::p = kind(minloc(b,mask = m,kind=8))
a = reshape((/0_8,-30_8,-100_8,-50_8,4_8,5_8,8_8,-11_8,6_8,-3_8,2_8,-400_8/), (/2,3,2,1/))
d =  minloc(a,mask = m,kind=8)
do i = 1,4
if ( c(i).ne. d(i) ) then
print*, '??? (Error: ) ???'
else
endif
end do
call check(p, kind(minloc(a,mask = m,kind=8)))
print *,'OK'

end

subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine          
