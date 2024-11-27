integer, dimension(1) :: shp1,o1
integer, allocatable, dimension(:) :: a1
integer, dimension(10) :: pad, source
integer :: i1
real :: rnd
logical :: error=.false.
do i1=1,size(source)
   source(i1)=i1
end do
do i1=1,size(pad)
   pad(i1)=i1
end do
o1=(/1/)
do i1=1,1
   call random_number(rnd)
   shp1(i1)=100000.0*rnd
end do
allocate(a1(shp1(1)))
a1=reshape(source,shp1,order=o1,pad=pad)
do i1=1,shp1(1)
   if (mod(i1,10)==0)cycle
   if(a1(i1).ne.mod(i1,10)) error=.true.
end do
if (error)print *,'error-1'
print *,'pass'
end
