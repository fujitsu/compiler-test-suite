subroutine s1
type x
  integer:: x1
  integer:: x2
end type
type(x),pointer:: v1,v2
allocate(v1,v2)
v1%x1=11
v1%x2=12
v2%x1=21
v2%x2=22
if (v1%x1/=11) print *,101
if (v1%x2/=12) print *,102
if (v2%x1/=21) print *,121
if (v2%x2/=22) print *,122
!$omp parallel private(v1,v2)
allocate(v1,v2)
v1%x1=111
v1%x2=112
v2%x1=121
v2%x2=122
if (v1%x1/=111) print *,201
if (v1%x2/=112) print *,202
if (v2%x1/=121) print *,221
if (v2%x2/=122) print *,222
!$omp end parallel
if (v1%x1/=11) print *,301
if (v1%x2/=12) print *,302
if (v2%x1/=21) print *,321
if (v2%x2/=22) print *,322
end
call s1
print *,'pass'
end
