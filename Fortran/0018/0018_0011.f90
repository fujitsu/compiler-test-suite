Program Main

integer,dimension(2,3,2,1)::a

integer,parameter, dimension (2,3,2,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1/))

logical,parameter, dimension(12)::m = .false.

logical,parameter,dimension(2,3,2,1)::n = reshape(m,(/2,3,2,1/))

integer,parameter,dimension(3,2,1) :: c = minloc(b,dim =1, mask = n,kind=8)

integer,dimension(3,2,1) :: d

integer,parameter::p = kind(minloc(b,dim =1, mask =n,kind=8))

a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))
d =  minloc(a,dim =1, mask = n,kind=8)
do i = 1,3
do j = 1,2
do k = 1,1


if (c(i,j,k).ne.d(i,j,k)) then

print*, '??? (Error: I->I) ???'

else

endif
enddo
enddo
enddo

call check(p, kind(minloc(a,dim =1, mask = n,kind=8)))
print *,'OK'

end


subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
