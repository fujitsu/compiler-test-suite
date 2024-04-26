subroutine s1
type t1
  integer::i1
  integer::i2
end type
type(t1)::iii
namelist /na/ iii
!$ CALL OMP_SET_NUM_THREADS(1)
call wr
iii=t1(1,2)
read(1,na)
!$omp parallel default(private)
iii%i1=11
iii%i2=12
read(2,na)
if (iii%i1/=201)print *,201,iii%i1
if (iii%i2/=202)print *,202,iii%i2
!$omp end parallel
end
call s1
print *,'pass'
end
subroutine wr
write(1,*) '&NA III%i2=102,III%i1=101 /'
write(2,*) '&NA III%i1=201,III%i2=202 /'
rewind 1
rewind 2
end


