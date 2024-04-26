subroutine s1
type t1
  integer::i1
  integer::i2
end type
type(t1)::iii
namelist /na/ iii
!$ CALL OMP_SET_NUM_THREADS(1)
iii=t1(1,2)
!$omp parallel default(private)
iii%i1=11
iii%i2=12
write(55,na)
!$omp end parallel
call chk
end
call s1
print *,'pass'
end
subroutine chk
type t1
  integer::i1
  integer::i2
end type
type(t1)::iii
namelist /na/ iii
rewind 55
read(55,na)
if (iii%i1/=11)print *,201,iii
if (iii%i2/=12)print *,202,iii
end
