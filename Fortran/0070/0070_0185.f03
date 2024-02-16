module mmm
integer,pointer::nam1
integer,pointer::nam2(:)
common /com1/nam1,nam2
namelist /nam/nam1,nam2
!$omp threadprivate(/com1/)
end
use mmm
!$omp parallel copyin(nam1,nam2)
allocate(nam1,nam2(2))
nam1=1
nam2=2
write(1,nam)
!$omp barrier
rewind 1
read(1,nam)
if(nam1/=1) print *,'err1'
if(any(nam2/=[2,2])) print *,'err2'
!$omp end parallel
print *,'pass'
end
