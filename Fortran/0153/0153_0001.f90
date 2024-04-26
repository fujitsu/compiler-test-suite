module m1
 integer,allocatable:: k1(:)
 integer,pointer:: k2(:)
 namelist /aaa/ k1,k2
!$omp threadprivate (k1,k2)
 integer:: kkkk
end
module m2
use m1
use omp_lib
private
public s1,s2
contains
subroutine s1
!$omp parallel 
allocate( k1(3) , k2(3))
k1=omp_get_thread_num()+1
k2=omp_get_thread_num()+11
kkkk=omp_get_num_threads()
!$omp end parallel
end subroutine
subroutine s2
!$omp parallel 
write(1,aaa)
!$omp end parallel
end subroutine
end
use m2
call s1
call s2
call chk
print *,'pass'
end
subroutine chk
use m1,only:kkkk
integer:: k1(3),k2(3)
integer:: n1(10000)=0,n2(10000)=0
namelist /aaa/ k1,k2
rewind 1
do
read(1,aaa,end=100)
if (k1(1)/=k1(2) .or. k1(1)/=k1(3)) print *,201
if (k2(1)/=k2(2) .or. k2(1)/=k2(3)) print *,202
if (n1(k1(1))/=0) print *,203,n1(k1(1)),k1
n1(k1(1))=1
if (n2(k2(1))/=0) print *,204,n2(k2(1)),k2
n2(k2(1))=1
end do
100 continue
do k=1,kkkk
if (n1(k)/=1) print *,301,n1(k),k
if (n2(k+10)/=1) print *,302,n2(k+10),k
end do
end
