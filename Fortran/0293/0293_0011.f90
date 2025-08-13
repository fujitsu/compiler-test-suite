subroutine s1
type x
  integer::x1
  integer::x2
end type
type y
  integer:: y1
  type(x)::y2(2)
end type
type (y):: v
namelist /nam/ v
!$ CALL OMP_SET_NUM_THREADS(1)
v%y1   =13
v%y2(1)=x(1,2)
v%y2(2)=x(11,12)
write(12,nam)
!$omp parallel
write(13,nam)
if (v%y2(1)%x1/=1)print *,101
if (v%y2(1)%x2/=2)print *,102
if (v%y2(2)%x1/=11)print *,103
if (v%y2(2)%x2/=12)print *,104
!$omp end parallel
call chk
end
call s1
print *,'pass'
end
subroutine chk
type x
  integer::x1
  integer::x2
end type
type y
  integer:: y1
  type(x)::y2(2)
end type
type (y):: v
namelist /nam/ v
rewind 12
rewind 13
read(12,nam)
if (v%y1/=13)print *,100
if (v%y2(1)%x1/=1)print *,101
if (v%y2(1)%x2/=2)print *,102
if (v%y2(2)%x1/=11)print *,103
if (v%y2(2)%x2/=12)print *,104
read(13,nam)
if (v%y1/=13)print *,100
if (v%y2(1)%x1/=1)print *,101
if (v%y2(1)%x2/=2)print *,102
if (v%y2(2)%x1/=11)print *,103
if (v%y2(2)%x2/=12)print *,104
end
