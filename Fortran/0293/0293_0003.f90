subroutine s1
!$ CALL OMP_SET_NUM_THREADS(1)
write(57,*) '&NA KKK%k1=2 III%i1=1 III%i2=2 NNN%n1=3 NNN%n2=2 KKK%k2=1 /'
write(57,*) '&NA KKK%k1=3 III%i1=2 III%i2=3 NNN%n1=4 NNN%n2=3 KKK%k2=2 /'
write(57,*) '&NA KKK%k1=4 III%i1=3 III%i2=4 NNN%n1=5 NNN%n2=4 KKK%k2=3 /'
write(57,*) '&NA KKK%k1=5 III%i1=4 III%i2=5 NNN%n1=6 NNN%n2=5 KKK%k2=4 /'
write(57,*) '&NA KKK%k1=6 III%i1=5 III%i2=6 NNN%n1=7 NNN%n2=6 KKK%k2=5 /'
write(57,*) '&NA KKK%k1=7 III%i1=6 III%i2=7 NNN%n1=8 NNN%n2=7 KKK%k2=6 /'
write(57,*) '&NA KKK%k1=8 III%i1=7 III%i2=8 NNN%n1=9 NNN%n2=8 KKK%k2=7 /'
write(57,*) '&NA KKK%k1=9 III%i1=8 III%i2=9 NNN%n1=10 NNN%n2=9 KKK%k2=8 /'
write(57,*) '&NA KKK%k1=10 III%i1=9 III%i2=10 NNN%n1=11 NNN%n2=10 KKK%k2=9 /'
write(57,*) '&NA KKK%k1=11 III%i1=10 III%i2=11 NNN%n1=12 NNN%n2=11 KKK%k2=10 /'
call chk
end
call s1
print *,'pass'
end
subroutine chk
type it
 integer::i1
 integer::i2
end type
type nt
 integer::n1
 integer::n2
end type
type kt
 integer::k1
 integer::k2
end type
type(it)::iii
type(nt)::nnn
type(kt)::kkk
namelist /na/ iii, nnn, kkk
rewind 57
iii=it(1,2)
kkk=kt(11,12)
nnn=nt(21,22)
!$omp parallel default(private),shared(nnn)
do mm=1,10
read(57,na)
if (iii%i1/=mm)print *,201,iii,mm
if (iii%i2/=mm+1)print *,301,iii,mm
if (nnn%n1/=mm+2)print *,202,nnn,mm+2
if (nnn%n2/=mm+1)print *,302,nnn,mm+1
if (kkk%k1/=mm+1)print *,203,kkk,mm+1
if (kkk%k2/=mm)print *,303,kkk,mm+1
end do
!$omp end parallel
if (nnn%n1/=12)print *,301,nnn
if (nnn%n2/=11)print *,302,nnn
end
