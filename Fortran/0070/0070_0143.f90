module m0
integer:: x
!$omp threadprivate(x)
end
subroutine s
use m0
integer::b(2)
integer,allocatable::a
allocate(a)
a=5
x=6
call s1(2,b,a)
call s2(2,b,a)
call s3(2,b,a)
contains
subroutine s1(i,b,a)
use m0
integer         :: b(i)
integer,allocatable::a
namelist /nam/ b,a,x
b=[1,2]
write(1,nam)
end subroutine
subroutine s2(i,b,a)
use m0
integer         :: b(i)
integer,allocatable::a
namelist /nam/ b,a,x
!$omp parallel
b=[1,2]+10
a=6
x=7
write(1,nam)
!$omp end parallel
end subroutine
subroutine s3(i,b,a)
use m0
integer         :: b(i)
integer,allocatable::a
namelist /nam/ b,a,x
!$omp parallel
do k=i,2
b=[1,2]+20
a=7
x=8
write(1,nam)
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
integer b(2),a,x
namelist /nam/b,a,x
rewind 1
do k=1,1
read(1,nam)
if (x/=6) print *,100,a,k
if (a/=5) print *,101,a,k
if (any(b/=[1,2]))print *,102,b,k
read(1,nam)
if (x/=7) print *,100,a,k
if (a/=6) print *,101,a,k
if (any(b/=10+[1,2]))print *,102,b,k
read(1,nam)
if (x/=8) print *,100,a,k
if (a/=7) print *,101,a,k
if (any(b/=20+[1,2]))print *,102,b,k
end do
end



