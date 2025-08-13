subroutine s1
!$ CALL OMP_SET_NUM_THREADS(1)
write(58,*) '&NA III%i1=1 III%i2=2 /'
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
type(it)::iii
namelist /na/ iii
rewind 58
iii=it(11,12)
!$omp parallel default(private)
read(58,na)
if (iii%i1/=1)print *,201,iii%i1
if (iii%i2/=2)print *,301,iii%i2
!$omp end parallel
if (iii%i1/=11)print *,101,iii
if (iii%i2/=12)print *,102,iii
end
