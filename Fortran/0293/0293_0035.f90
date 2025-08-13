subroutine s1
type x
 sequence
  integer::k1,k2(2)
end type
type(x)::i,j
common /com/i,j
namelist /nam/ i
!$omp threadprivate(/com/)
i%k1=1
i%k2=[2,3]
write(39,nam)
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
type(x)::i
namelist /nam/ i
rewind 39
read(39,nam)
if (i%k1/=1)print *,101
if (i%k2(1)/=2)print *,102
if (i%k2(2)/=3)print *,103
end
