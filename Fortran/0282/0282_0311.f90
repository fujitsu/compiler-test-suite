Program Main
real*16,dimension(2,3,2,2:1)::a
real*16,parameter, dimension (2,3,2,0) :: b = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16, &
                                   6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,0/))

logical*8,parameter, dimension(12)::m = .false.

logical*8,parameter,dimension(2,3,2,0)::n = reshape(m,(/2,3,2,0/))

integer,parameter,dimension(4) :: c = minloc(b, mask = n)
integer,dimension(4) :: d
integer::p = kind(minloc(b, mask = n))
a = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16,6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,0/))
d =  minloc(a, mask = n)
do i = 1,4
print*, c(i) , '---', d(i)
if ( c(i).ne.d(i) ) then
print*, '??? (Error:) ???'
else
print*, 'PASS'
endif
end do

call check(p, kind(minloc(a,mask = n)))

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
