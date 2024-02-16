use omp_lib
call omp_set_num_threads(1)
call s1
call s2
print *,'pass'
end
subroutine s1
integer,pointer::nam1
integer,pointer::nam2(:)
common /com1/nam1,nam2
namelist /nam/nam1,nam2
!$omp parallel firstprivate(/com1/)
allocate(nam1,nam2(2))
nam1=1
nam2=2
write(60,nam)
rewind 60
read(60,nam)
if(nam1/=1) print *,'err11'
!$omp end parallel
end
subroutine s2
integer,pointer::nam1
integer,pointer::nam2(:)
common /com1/nam1,nam2
namelist /nam/nam1,nam2
!$omp parallel private(/com1/)
allocate(nam1,nam2(2))
nam1=1
nam2=2
write(61,nam)
rewind 61
read(61,nam)
if(nam1/=1) print *,'err111'
!$omp end parallel
end
