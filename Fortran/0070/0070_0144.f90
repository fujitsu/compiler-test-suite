module m0
integer:: x
!$omp threadprivate(x)
end
subroutine s
use m0
integer::b(2,3)
integer,allocatable::a
allocate(a)
a=5
x=6
call s1(2,b,3)
call s2(2,b,3)
call s3(2,b,3)
contains
subroutine s1(i,b,j)
use m0
integer         :: b(i:j,j:i+3)
namelist /nam/ b,a,x
b=reshape([1,2,3,4,5,6],[2,3])
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])
a=105
x=106
write(2,nam)
end subroutine
subroutine s2(i,b,j)
use m0
integer         :: b(i:j,j:i+3)
namelist /nam/ b,a,x
!$omp parallel
b=reshape([1,2,3,4,5,6],[2,3])+10
a=6
x=7
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])+10
a=106
x=107
write(2,nam)
!$omp end parallel
end subroutine
subroutine s3(i,b,j)
use m0
integer         :: b(i:j,j:i+3)
namelist /nam/ b,a,x
!$omp parallel
do k=i,2
b=reshape([1,2,3,4,5,6],[2,3])+20
a=7
x=8
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])+20
a=100+7
x=100+8
write(2,nam)
end do
!$omp end parallel
end subroutine
end
call omp_set_num_threads(1)
call s
call chk
print *,'pass'
end
subroutine chk
integer b(2,3),a,x
namelist /nam/b,a,x
rewind 1
rewind 2
do k=1,1
read(1,nam)
if (x/=6) print *,100,a,k
if (a/=5) print *,101,a,k
if (any(b/=reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
read(1,nam)
if (x/=7) print *,100,a,k
if (a/=6) print *,101,a,k
if (any(b/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
read(1,nam)
if (x/=8) print *,100,a,k
if (a/=7) print *,101,a,k
if (any(b/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
read(2,nam)
if (x/=106) print *,1100,x,k
if (a/=105) print *,1101,a,k
if (any(b/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
read(2,nam)
if (x/=107) print *,1110,x,k
if (a/=106) print *,1111,a,k
if (any(b/=110+reshape([1,2,3,4,5,6],[2,3])))print *,2102,b,k
read(2,nam)
if (x/=108) print *,3100,x,k
if (a/=107) print *,3101,a,k
if (any(b/=120+reshape([1,2,3,4,5,6],[2,3])))print *,3102,b,k
end do
end



