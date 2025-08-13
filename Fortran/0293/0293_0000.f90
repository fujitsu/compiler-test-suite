subroutine s1
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
!$ CALL OMP_SET_NUM_THREADS(1)
iii=it(1,2)
kkk=kt(11,12)
nnn=nt(21,22)
!$omp parallel default(private),shared(nnn)
do i=1,10
iii=it(i,i-1)
kkk=kt(i+1,i)
nnn=nt(i+2,i+1)
write(54,na)
end do
!$omp end parallel
if (nnn%n1/=12)print *,301,nnn
if (nnn%n2/=11)print *,302,nnn
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
rewind 54
do mm=1,10
read(54,na)
if (iii%i1/=mm)print *,201,iii,mm
if (iii%i2/=mm-1)print *,301,iii,mm
if (nnn%n1/=mm+2)print *,202,nnn,mm+2
if (nnn%n2/=mm+1)print *,302,nnn,mm+1
if (kkk%k1/=mm+1)print *,203,kkk,mm+1
if (kkk%k2/=mm)print *,303,kkk,mm+1
end do
end
