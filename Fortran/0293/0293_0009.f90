      common /com/ k,i
      namelist /nam/i,k
!$ CALL OMP_SET_NUM_THREADS(1)
      i=11
      k=12
      write(11,nam)
      !$omp parallel
      i=1
      k=2
      write(10,nam)
      !$omp end parallel
call chk1
print *,'pass'
      end
subroutine chk1
      namelist /nam/i,k
rewind 10
rewind 11
read(10,nam)
if (i/=1)print *,101,i
if (k/=2)print *,102,k
read(11,nam)
if (i/=11)print *,201,i
if (k/=12)print *,201,i
end
