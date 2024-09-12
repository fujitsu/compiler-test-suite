integer a(10),b(10)
print *,'pass'
b=1
n=10
!$omp do
do i=1,n
a(i)=b(i)
enddo
contains
subroutine sub()
!$omp do
do i=1,1
end do
end subroutine
subroutine sub01()
integer a(1),b(1)
a=1
b=1
do i=1,1
end do
nnn=1
!$omp do
do j=1,size((/(ii,ii=1,nnn)/))
end do
i=1
do i=1,1
end do
!$omp do
do j=size((/(ii,ii=1,nnn)/)),size((/(ii,ii=1,nnn)/))
end do
end subroutine
end
