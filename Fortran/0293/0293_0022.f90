subroutine s1
common /com/i,j
namelist /nam/ i,j
!$omp threadprivate(/com/)
i=1
j=2
write(1,nam)
!$omp parallel
i=11
j=12
write(2,nam)
!$omp end parallel
end
!$ CALL OMP_SET_NUM_THREADS(1)
call s1
call chk
print *,'pass'
end
subroutine chk
namelist /nam/ i,j
rewind 1
read(1,nam)
if (i/=1)print *,101
if (j/=2)print *,102
rewind 2
read(2,nam)
if (i/=11)print *,201
if (j/=12)print *,202
end




