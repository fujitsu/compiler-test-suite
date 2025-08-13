subroutine s1
type t1
  integer::i1
end type
type(t1)::iii
namelist /na/ iii
!$ CALL OMP_SET_NUM_THREADS(1)
read(3,na)
!$omp parallel
read(4,na)
if (iii%i1/=201)print *,201,iii%i1
!$omp end parallel
end
call wr
call s1
print *,'pass'
end
subroutine wr
type t1
  integer::i1
end type
type(t1)::iii
namelist /na/ iii
iii=t1(101)
write(3,na)
iii=t1(201)
write(4,na)
rewind 3
rewind 4
end
