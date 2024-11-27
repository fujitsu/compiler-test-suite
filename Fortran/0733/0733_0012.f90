 double precision::testdbl
 testdbl=1.23456789d0
 do i=1,10
   write(1,'(1x,"test_dbl = ",f15.3,"  <",f0.3,">")') testdbl,testdbl
   write(1,'(1x,"test_dbl = ",f15.3,"  <",f0.3,">")') -testdbl,-testdbl
   testdbl=testdbl*10.0d0
 end do
call chk
print *,'pass'
end
subroutine chk
character*100 r
rewind 1
do j=1,1000
read(1,'(a)',end=100) r
if (index(r,'*')/=0) print *,'error',j
end do
100 end
