subroutine s1
type t0
  integer::k1
  integer::k2
end type
type t1
  integer::i1
  type(t0)::i2
end type
type(t1)::iii,kkk(2),nnn
namelist /na/ iii,kkk,nnn
!$ CALL OMP_SET_NUM_THREADS(1)
call wr
iii=t1(1,t0(2,3))
read(18,na)
!$omp parallel default(private)
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
kkk%i1=11
kkk%i2%k1=12
kkk%i2%k2=13
nnn%i1=11
nnn%i2%k1=12
nnn%i2%k2=13
read(19,na)
if (iii%i1/=201)print *,201,iii%i1
if (iii%i2%k1/=211)print *,211,iii%i2%k1
if (iii%i2%k2/=212)print *,212,iii%i2%k2
if (kkk(1)%i1/=201)print *,201
if (kkk(1)%i2%k1/=211)print *,211
if (kkk(1)%i2%k2/=212)print *,212
if (kkk(2)%i1/=201)print *,201
if (kkk(2)%i2%k1/=211)print *,211
if (kkk(2)%i2%k2/=212)print *,212
if (nnn%i1/=201)print *,201,nnn%i1
if (nnn%i2%k1/=211)print *,211,nnn%i2%k1
if (nnn%i2%k2/=212)print *,212,nnn%i2%k2
!$omp end parallel
rewind 18
rewind 19
read(18,na)
!$omp parallel default(private)
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
kkk%i1=11
kkk%i2%k1=12
kkk%i2%k2=13
nnn%i1=11
nnn%i2%k1=12
nnn%i2%k2=13
read(19,na)
if (iii%i1/=201)print *,401,iii%i1
if (iii%i2%k1/=211)print *,411,iii%i2%k1
if (iii%i2%k2/=212)print *,412,iii%i2%k2
if (kkk(1)%i1/=201)print *,201
if (kkk(1)%i2%k1/=211)print *,211
if (kkk(1)%i2%k2/=212)print *,212
if (kkk(2)%i1/=201)print *,201
if (kkk(2)%i2%k1/=211)print *,211
if (kkk(2)%i2%k2/=212)print *,212
if (nnn%i1/=201)print *,201,nnn%i1
if (nnn%i2%k1/=211)print *,211,nnn%i2%k1
if (nnn%i2%k2/=212)print *,212,nnn%i2%k2
!$omp end parallel
rewind 18
rewind 19
read(18,na)
!$omp parallel default(private)
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
kkk%i1=11
kkk%i2%k1=12
kkk%i2%k2=13
nnn%i1=11
nnn%i2%k1=12
nnn%i2%k2=13
read(19,na)
if (iii%i1/=201)print *,601,iii%i1
if (iii%i2%k1/=211)print *,611,iii%i2%k1
if (iii%i2%k2/=212)print *,612,iii%i2%k2
if (kkk(1)%i1/=201)print *,201
if (kkk(1)%i2%k1/=211)print *,211
if (kkk(1)%i2%k2/=212)print *,212
if (kkk(2)%i1/=201)print *,201
if (kkk(2)%i2%k1/=211)print *,211
if (kkk(2)%i2%k2/=212)print *,212
if (nnn%i1/=201)print *,201,nnn%i1
if (nnn%i2%k1/=211)print *,211,nnn%i2%k1
if (nnn%i2%k2/=212)print *,212,nnn%i2%k2
!$omp end parallel
rewind 18
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
kkk%i1=11
kkk%i2%k1=12
kkk%i2%k2=13
nnn%i1=11
nnn%i2%k1=12
nnn%i2%k2=13
read(18,na)
if (iii%i2%k1/=111)print *,511,iii%i2%k1
if (iii%i2%k2/=112)print *,512,iii%i2%k2
if (iii%i1/=101)print *,501,iii%i1
if (kkk(1)%i1/=101)print *,201
if (kkk(1)%i2%k1/=111)print *,211
if (kkk(1)%i2%k2/=112)print *,212
if (kkk(2)%i1/=101)print *,201
if (kkk(2)%i2%k1/=111)print *,211
if (kkk(2)%i2%k2/=112)print *,212
if (nnn%i1/=101)print *,201,nnn%i1
if (nnn%i2%k1/=111)print *,211,nnn%i2%k1
if (nnn%i2%k2/=112)print *,212,nnn%i2%k2
rewind 18
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
kkk%i1=11
kkk%i2%k1=12
kkk%i2%k2=13
nnn%i1=11
nnn%i2%k1=12
nnn%i2%k2=13
read(18,na)
if (iii%i2%k1/=111)print *,511,iii%i2%k1
if (iii%i2%k2/=112)print *,512,iii%i2%k2
if (iii%i1/=101)print *,501,iii%i1
!$omp parallel default(private)
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
kkk%i1=11
kkk%i2%k1=12
kkk%i2%k2=13
nnn%i1=11
nnn%i2%k1=12
nnn%i2%k2=13
rewind 19
read(19,na)
if (iii%i1/=201)print *,601,iii%i1
if (iii%i2%k1/=211)print *,611,iii%i2%k1
if (iii%i2%k2/=212)print *,612,iii%i2%k2
if (kkk(1)%i1/=201)print *,201
if (kkk(1)%i2%k1/=211)print *,211
if (kkk(1)%i2%k2/=212)print *,212
if (kkk(2)%i1/=201)print *,201
if (kkk(2)%i2%k1/=211)print *,211
if (kkk(2)%i2%k2/=212)print *,212
if (nnn%i1/=201)print *,201,nnn%i1
if (nnn%i2%k1/=211)print *,211,nnn%i2%k1
if (nnn%i2%k2/=212)print *,212,nnn%i2%k2
iii%i1=11
iii%i2%k1=12
iii%i2%k2=13
kkk%i1=11
kkk%i2%k1=12
kkk%i2%k2=13
nnn%i1=11
nnn%i2%k1=12
nnn%i2%k2=13
rewind 19
read(19,na)
if (iii%i1/=201)print *,601,iii%i1
if (iii%i2%k1/=211)print *,611,iii%i2%k1
if (iii%i2%k2/=212)print *,612,iii%i2%k2
if (kkk(1)%i1/=201)print *,201
if (kkk(1)%i2%k1/=211)print *,211
if (kkk(1)%i2%k2/=212)print *,212
if (kkk(2)%i1/=201)print *,201
if (kkk(2)%i2%k1/=211)print *,211
if (kkk(2)%i2%k2/=212)print *,212
if (nnn%i1/=201)print *,201,nnn%i1
if (nnn%i2%k1/=211)print *,211,nnn%i2%k1
if (nnn%i2%k2/=212)print *,212,nnn%i2%k2
!$omp end parallel
end
call s1
print *,'pass'
end
subroutine wr
write(18,*) '&NA III%i2%k1=111,III%i1=101,III%i2%k2=112,',&
     'NNN%i2%k1=111,NNN%i1=101,NNN%i2%k2=112,',&
     'kkk(2)%i2%k1=111,kkk(2)%i1=101,kkk(2)%i2%k2=112,',&
     'kkk(1)%i2%k1=111,kkk(1)%i1=101,kkk(1)%i2%k2=112/'
write(19,*) '&NA III%i1=201,III%i2%k2=212,III%i2%k1=211,',&
     'NNN%i2%k1=211,NNN%i1=201,NNN%i2%k2=212,',&
     'kkk(2)%i2%k1=211,kkk(2)%i1=201,kkk(2)%i2%k2=212,',&
     'kkk(1)%i2%k1=211,kkk(1)%i1=201,kkk(1)%i2%k2=212 /'
rewind 18
rewind 19
end
