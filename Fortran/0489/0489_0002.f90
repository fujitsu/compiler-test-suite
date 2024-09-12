module m1
  type p1
    integer:: d
    integer,pointer:: p(:)
  end type
  type a1
    integer:: d
    integer,allocatable:: a(:)
  end type
  integer,pointer:: p(:)
  integer,allocatable:: a(:)
  type (p1),pointer    :: tp(:)
  type (a1),allocatable:: ta(:)
  integer(8):: save(4)
end
subroutine s1
use m1
type(p1):: vp 
type(a1):: va 
allocate (vp%p(2) ,va%a(2) , p(2) , a(2) ,tp(2) , ta(2))
allocate ( tp(1)%p(2) , tp(2)%p(2), ta(1)%a(2), ta(2)%a(2) )
vp%p=[1,2]
va%a=[1,2]
p   =[1,2]
a   =[1,2]
tp(1)%p=[1,2]
tp(2)%p=[1,2]
ta(1)%a=[1,2]
ta(2)%a=[1,2]

!$omp parallel 
!$omp sections lastprivate( p ) firstprivate( p )
!$omp section
if (.not.associated(p)) write(6,*)101
p=p+1
if (any(p/=1+[1,2])) print *,1011
!$omp end sections
!$omp end parallel
if (any(p/=1+[1,2])) print *,1012

!$omp parallel
!$omp sections lastprivate( a ) firstprivate( a )
!$omp section
if (.not.allocated(a)) write(6,*)102
a=a+1
if (any(a/=1+[1,2])) print *,1021
save(1)=loc(a)
!$omp end sections
!$omp end parallel
if (any(a/=1+[1,2])) print *,1022

!$omp parallel
!$omp sections lastprivate( vp ) firstprivate( vp)
!$omp section
if (.not.associated(vp%p)) then
    write(6,*)103
endif
vp%p = vp%p +1
if (any(vp%p/=1+[1,2])) print *,1031
save(1)=loc(vp%p)
!$omp end sections
!$omp end parallel
if (any(vp%p/=1+[1,2])) print *,1032

!$omp parallel
!$omp sections lastprivate( va ) firstprivate( va )
!$omp section
if (.not.allocated(va%a)) then
                
    write(6,*)104
endif
va%a = va%a +1
if (any(va%a/=1+[1,2])) print *,1041
save(1)=loc(va%a)
!$omp end sections
!$omp end parallel
if (any(va%a/=1+[1,2])) print *,1041

!$omp parallel
!$omp sections lastprivate( tp ) firstprivate( tp )
!$omp section
if (.not.associated( tp(1)%p)) then
    write(6,*)1051
endif
if (.not.associated( tp(2)%p)) then
    write(6,*)1052
endif
tp(1)%p=tp(1)%p + 1
tp(2)%p=tp(2)%p + 1
save(1)=loc(tp(1)%p)
save(2)=loc(tp(2)%p)
if (any(tp(1)%p/=1+[1,2])) print *,1054
if (any(tp(2)%p/=1+[1,2])) print *,1055
!$omp end sections
!$omp end parallel
if (any(tp(1)%p/=1+[1,2])) print *,1056
if (any(tp(2)%p/=1+[1,2])) print *,1057

!$omp parallel
!$omp sections lastprivate( ta ) firstprivate( ta )
!$omp section
if (.not.allocated(ta)) write(6,*)4001

if (.not.allocated(ta(1)%a)) then
                
    write(6,*)4002
endif
if (.not.allocated(ta(2)%a)) then
                
    write(6,*)4003
endif
  ta(1)%a =[2,3]
  ta(2)%a =[2,3]
save(1)=loc(ta(1)%a)
save(2)=loc(ta(2)%a)
if (any(ta(1)%a/=1+[1,2])) print *,4004
if (any(ta(2)%a/=1+[1,2])) print *,4005
!$omp end sections
!$omp end parallel
if (any(ta(1)%a/=1+[1,2])) print *,4094
if (any(ta(2)%a/=1+[1,2])) print *,4095

!$omp parallel
!$omp sections lastprivate( ta ) 
!$omp section
if (.not.allocated(ta)) write(6,*)4101

if (.not.allocated(ta(1)%a)) then
                
    write(6,*)4102
endif
if (.not.allocated(ta(2)%a)) then
                
    write(6,*)4103
endif
  ta(1)%a =1+[2,3]
  ta(2)%a =1+[2,3]
save(1)=loc(ta(1)%a)
save(2)=loc(ta(2)%a)
if (any(ta(1)%a/=2+[1,2])) print *,4104
if (any(ta(2)%a/=2+[1,2])) print *,4105
!$omp end sections
!$omp end parallel
if (any(ta(1)%a/=2+[1,2])) print *,4194
if (any(ta(2)%a/=2+[1,2])) print *,4195

end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
