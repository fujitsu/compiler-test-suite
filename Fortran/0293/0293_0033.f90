subroutine s1
type x
 sequence
  integer::k1,k2(2)
end type
type(x)::i,j
common /com/i,j
namelist /nam/ i,j
!$omp threadprivate(/com/)
i%k1=1
i%k2=[2,3]
j%k1=4
j%k2=[5,6]
write(1,nam)
!$omp parallel
i%k1=11
i%k2=[12,13]
j%k1=14
j%k2=[15,16]
write(2,nam)
!$omp end parallel
end
!$ CALL OMP_SET_NUM_THREADS(1)
call s1
call chk
print *,'pass'
end
subroutine chk
type x
 sequence
  integer::k1,k2(2)
end type
type(x)::i,j
namelist /nam/ i,j
rewind 1
read(1,nam)
if (i%k1/=1)print *,101
if (i%k2(1)/=2)print *,102
if (i%k2(2)/=3)print *,103
if (j%k1/=4)print *,104
if (j%k2(1)/=5)print *,105
if (j%k2(2)/=6)print *,163
rewind 2
read(2,nam)
if (i%k1/=11)print *,201
if (i%k2(1)/=12)print *,202
if (i%k2(2)/=13)print *,203
if (j%k1/=14)print *,204
if (j%k2(1)/=15)print *,205
if (j%k2(2)/=16)print *,263
end




