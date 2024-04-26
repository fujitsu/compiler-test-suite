Program Main

complex*32,dimension(2,3,2,1)::a
complex*32,parameter, dimension (2,3,2,1) :: b = reshape((/(0.0_16,0.0_16),(-30.0_16,-30.0_16),(-100.0_16,-100.0_16),&
                           (-50.0_16,-50.0_16),(4.0_16,4.0_16), (5.0_16,5.0_16),(8.0_16,8.0_16),&
                           (-11.0_16,-11.0_16),(6.0_16,6.0_16),(-3.0_16,-3.0_16),(2.0_16, 2.0_16),&
                           (-400.0_16, -400.0_16)/), (/2,3,2,1/))

logical,parameter,dimension(2,3,2,1)::m = reshape((/.true., .false.,.false.,.false.,.false.,&
                   .false.,.false.,.false.,.false.,.false.,.false.,.false./),(/2,3,2,1/))

complex*32,parameter,dimension(3,2,1) :: c = product(b,dim =1, mask = m)
complex*32,dimension(3,2,1) :: d
integer::p = kind(product(b,dim =1, mask = m))
a = reshape((/(0.0_16,0.0_16),(-30.0_16,-30.0_16),(-100.0_16,-100.0_16),&
                           (-50.0_16,-50.0_16),(4.0_16,4.0_16), (5.0_16,5.0_16),(8.0_16,8.0_16),&
                           (-11.0_16,-11.0_16),(6.0_16,6.0_16),(-3.0_16,-3.0_16),(2.0_16, 2.0_16),&
                           (-400.0_16, -400.0_16)/), (/2,3,2,1/))

d =  product(a,dim =1, mask = m)

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

call check(p, kind(product(a,dim =1,mask = m)))

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
               
