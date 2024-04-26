subroutine s1
type t1
  integer::i1
end type
type(t1)::iii
namelist /na/ iii
!$ CALL OMP_SET_NUM_THREADS(1)
read(1,na)
!$omp parallel
read(2,na)
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
write(1,na)
iii=t1(201)
write(2,na)
rewind 1
rewind 2
end

