subroutine s1(k1,k2,a1,a2,b1,b2)
integer a1(k1,k2),a2(k1+1,k2+1)
type x
 sequence
 integer x1
 integer x2
end type
type (x)::b1(k1,k2),b2(k1+1,k2+1)
namelist /name/ a1,a2,b1,b2
write(1,name)
write(1,name)
!$omp parallel
write(2,name)
!$omp end parallel
write(1,name)
!$omp parallel
write(2,name)
write(2,name)
!$omp end parallel
end
parameter(k1=2,k2=3)
integer a1(k1,k2),a2(k1+1,k2+1)
type x
 sequence
 integer x1
 integer x2
end type
type (x)::b1(k1,k2),b2(k1+1,k2+1)
a1=reshape([1,2,3,4,5,6],[2,3])
a2=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])
b1%x1=reshape([1,2,3,4,5,6],[2,3])+10
b1%x2=reshape([1,2,3,4,5,6],[2,3])+20
b2%x1=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+30
b2%x2=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+40
!$ CALL OMP_SET_NUM_THREADS(1)
call s1(k1,k2,a1,a2,b1,b2)
do ii=1,2
rewind ii
call chk(ii)
a1=0;a2=0;b1%x1=0;b1%x2=0;b2%x1=0;b2%x2=0
rewind ii
call chk2(k1,k2,a1,a2,b1,b2,ii)
end do
print *,'pass'
end
subroutine chk(ii)
parameter(k1=2,k2=3)
integer a1(k1,k2),a2(k1+1,k2+1)
type x
 sequence
 integer x1
 integer x2
end type
type (x)::b1(k1,k2),b2(k1+1,k2+1)
namelist /name/ a1,a2,b1,b2
do i=1,3
read(ii,name)
if (any(a1/=reshape([1,2,3,4,5,6],[2,3])))print *,102
if (any(a2/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])))print *,103
if (any(b1%x1/=reshape([1,2,3,4,5,6],[2,3])+10))print *,104
if (any(b1%x2/=reshape([1,2,3,4,5,6],[2,3])+20))print *,105
if (any(b2%x1/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+30))print *,106
if (any(b2%x2/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+40))print *,107
a1=0;a2=0;b1%x1=0;b1%x2=0;b2%x1=0;b2%x2=0
end do
end
subroutine chk2(k1,k2,a1,a2,b1,b2,ii)
integer a1(k1,k2),a2(k1+1,k2+1)
type x
 sequence
 integer x1
 integer x2
end type
type (x)::b1(k1,k2),b2(k1+1,k2+1)
namelist /name/ a1,a2,b1,b2
do i=1,3
read(ii,name)
if (any(a1/=reshape([1,2,3,4,5,6],[2,3])))print *,102
if (any(a2/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])))print *,103
if (any(b1%x1/=reshape([1,2,3,4,5,6],[2,3])+10))print *,104
if (any(b1%x2/=reshape([1,2,3,4,5,6],[2,3])+20))print *,105
if (any(b2%x1/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+30))print *,106
if (any(b2%x2/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+40))print *,107
a1=0;a2=0;b1%x1=0;b1%x2=0;b2%x1=0;b2%x2=0
end do
end



