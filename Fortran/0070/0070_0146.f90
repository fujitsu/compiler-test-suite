module m0
integer:: x
integer:: y(2,3)
common /com/x,y
!$omp threadprivate(com)
end
subroutine s
use m0
integer::b(2,3),c(2,3)
integer,allocatable::a
allocate(a)
call s1(2,b,a,3,c)
call s2(2,b,a,3,c)
call s3(2,b,a,3,c)
contains
subroutine s1(i,b,a,j,c)
use m0
integer,allocatable::a
integer         :: b(i:j,j:j+2),c(2,3)
namelist /nam/ b,a,x,c,y
b=reshape([1,2,3,4,5,6],[2,3])
c=reshape([1,2,3,4,5,6],[2,3])
y=reshape([1,2,3,4,5,6],[2,3])
a=5
x=6
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])
c=100+reshape([1,2,3,4,5,6],[2,3])
y=100+reshape([1,2,3,4,5,6],[2,3])
a=105
x=106
write(2,nam)
end subroutine
subroutine s2(i,b,a,j,c)
use m0
integer         :: b(i:j,j:j+2),c(2,3)
namelist /nam/ b,a,x,c,y
integer,allocatable::a
!$omp parallel
b=reshape([1,2,3,4,5,6],[2,3])+10
c=reshape([1,2,3,4,5,6],[2,3])+10
y=reshape([1,2,3,4,5,6],[2,3])+10
a=6
x=7
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])+10
c=100+reshape([1,2,3,4,5,6],[2,3])+10
y=100+reshape([1,2,3,4,5,6],[2,3])+10
a=106
x=107
write(2,nam)
!$omp end parallel
end subroutine
subroutine s3(i,b,a,j,c)
use m0
integer,allocatable::a
integer         :: b(i:j,j:j+2),c(2,3)
namelist /nam/ b,a,x,c,y
!$omp parallel
do k=i,2
b=reshape([1,2,3,4,5,6],[2,3])+20
c=reshape([1,2,3,4,5,6],[2,3])+20
y=reshape([1,2,3,4,5,6],[2,3])+20
a=7
x=8
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
a=107
x=108
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
integer b(2,3),a,x,c(2,3),y(2,3)
namelist /nam/b,a,x,c,y
rewind 1
rewind 2
do k=1,1
read(1,nam)
if (x/=6) print *,100,x,k
if (a/=5) print *,101,a,k
if (any(b/=reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(c/=reshape([1,2,3,4,5,6],[2,3])))print *,102,c,k
if (any(y/=reshape([1,2,3,4,5,6],[2,3])))print *,102,y,k
read(1,nam)
if (x/=7) print *,100,a,k
if (a/=6) print *,101,a,k
if (any(b/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(c/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(y/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
read(1,nam)
if (x/=8) print *,100,a,k
if (a/=7) print *,101,a,k
if (any(b/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(c/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(y/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
read(2,nam)
if (x/=106) print *,1100,x,k
if (a/=105) print *,1101,a,k
if (any(b/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
if (any(c/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
if (any(y/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
read(2,nam)
if (x/=107) print *,1110,x,k
if (a/=106) print *,1111,a,k
if (any(b/=110+reshape([1,2,3,4,5,6],[2,3])))print *,2102,b,k
if (any(c/=110+reshape([1,2,3,4,5,6],[2,3])))print *,2102,b,k
if (any(y/=110+reshape([1,2,3,4,5,6],[2,3])))print *,2102,b,k
read(2,nam)
if (x/=108) print *,3100,x,k
if (a/=107) print *,3101,a,k
if (any(b/=120+reshape([1,2,3,4,5,6],[2,3])))print *,3102,b,k
if (any(c/=120+reshape([1,2,3,4,5,6],[2,3])))print *,3102,b,k
if (any(y/=120+reshape([1,2,3,4,5,6],[2,3])))print *,3102,b,k
end do
end



