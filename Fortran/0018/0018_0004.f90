
Program Main
integer*4,dimension(2,3,2,1)::a
integer*4,parameter, dimension (2,3,2,1) :: b = reshape((/0_4,-30_4,-100_4,-50_4,4_4,5_4,8_4,-11_4, &
                                   6_4,-3_4,2_4,-400_4/), (/2,3,2,1/))
logical,parameter::m = .true.
integer*4,parameter,dimension(4) :: c = minloc(b ,mask = m,kind=8)

integer*4,dimension(4) :: d
integer,parameter::p = kind(minloc(b,mask = m,kind=8))
a = reshape((/0_4,-30_4,-100_4,-50_4,4_4,5_4,8_4,-11_4,6_4,-3_4,2_4,-400_4/), (/2,3,2,1/))
d =  minloc(a,mask = m)
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
