Program Main

real,dimension(2,3,2,1)::a

real,parameter, dimension (2,3,2,1) :: b = reshape((/0.0,-30.0,-100.0,-50.0,4.0,5.0,8.0,-11.0, &
                                   6.0,-3.0,2.0,-400.0/), (/2,3,2,1/))

real,dimension(3,2,1) :: d

real,parameter,dimension(3,2,1) :: c = maxval(b,mask = b> -30.0,dim = 1)

integer,parameter::p = kind(maxval(b,mask = b> -30.0,dim =1))

a = reshape((/0.0,-30.0,-100.0,-50.0,4.0,5.0,8.0,-11.0,6.0,-3.0,2.0,-400.0/), (/2,3,2,1/))

d = maxval(a,mask = a> -30.0,dim = 1)

do i = 1,3
do j = 1,2
do k = 1,1

print*, c(i,j,k), '---', d(i,j,k)

if (c(i,j,k).ne.d(i,j,k)) then

print*, '??? (Error: R->R) ???'

else

print*, 'R -> R'


endif

enddo

enddo

enddo



call check(p, kind(maxval(a,mask = a> -30.0,dim =1)))

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
