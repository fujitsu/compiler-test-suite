subroutine s1
type t0
  integer::k1
  integer::k2
end type
type t1
  integer::i1
  type(t0)::i2
end type
type(t1)::iii
namelist /na/ iii
!$ CALL OMP_SET_NUM_THREADS(1)
call wr
iii=t1(1,t0(2,3))
read(25,na)
if (iii%i2%k1/=111)print *,211,iii%i2%k1
if (iii%i2%k2/=112)print *,212,iii%i2%k2
if (iii%i1/=101)print *,101,iii%i1
!$omp parallel default(private)
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
read(26,na)
if (iii%i1/=201)print *,201,iii%i1
if (iii%i2%k1/=211)print *,211,iii%i2%k1
if (iii%i2%k2/=212)print *,212,iii%i2%k2
!$omp end parallel
end
call s1
print *,'pass'
end
subroutine wr
write(25,*) '&NA III%i2%k1=111,III%i1=101,III%i2%k2=112/'
write(26,*) '&NA III%i1=201,III%i2%k2=212,III%i2%k1=211 /'
rewind 25
rewind 26
end
