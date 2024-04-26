Program Main

real*16,dimension(2,3,2,1)::a

real*16,parameter, dimension (2,3,2,1) :: b = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16, &
                                   6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,1/))

logical*1,parameter, dimension(12)::m = .false.
logical*1,parameter,dimension(2,3,2,1)::n = reshape(m,(/2,3,2,1/))


real*16,parameter,dimension(3,2,1) :: c = minval(b,dim =1, mask = n)

real*16,dimension(3,2,1) :: d

integer::p = kind(minval(b,dim =1, mask = n))

a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))

d =  minval(a,dim =1, mask = n)
do i = 1,3
do j = 1,2
do k = 1,1
print*, c(i,j,k), '---', d(i,j,k)
if (c(i,j,k).ne.d(i,j,k)) then
print*, '??? (Error: ) ???'
else
print*, 'PASS'

endif
enddo
enddo
enddo
call check(p, kind(minval(a,dim =1,mask = n)))


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
