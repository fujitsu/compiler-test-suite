Program Main
integer,dimension(2,3,2,1)::a
integer,parameter, dimension (2,3,2,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1/))
logical,parameter::m = .true.
integer,parameter,dimension(1) :: c = maxval(b ,mask = m)

integer,dimension(1) :: d
integer,parameter::p = kind(maxval(b,mask = m))
a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))
d =  maxval(a,mask = m)
do i = 1,1
print*, c(i), '---', d(i)
if ( c(i).ne. d(i) ) then
print*, '??? (Error: I->I) ???'
else
print*, 'I -> I'
endif
end do
call check(p, kind(maxval(a,mask = m)))

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
