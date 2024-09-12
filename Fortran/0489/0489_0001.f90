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

!$omp parallel firstprivate( p )
if (.not.associated(p)) write(6,*)101
if (any(p/=[1,2])) print *,1011
!$omp end parallel

!$omp parallel firstprivate( a )
if (.not.allocated(a)) write(6,*)102
if (any(a/=[1,2])) print *,1021
!$omp end parallel

!$omp parallel firstprivate( vp )
if (.not.associated(vp%p)) then
    write(6,*)103
endif
if (any(vp%p/=[1,2])) print *,1031
!$omp end parallel

!$omp parallel firstprivate( va )
if (.not.allocated(va%a)) then
                
    write(6,*)104
endif
if (any(va%a/=[1,2])) print *,1041
!$omp end parallel

!$omp parallel firstprivate( tp )
if (.not.associated( tp(1)%p)) then
    write(6,*)1051
endif
if (.not.associated( tp(2)%p)) then
    write(6,*)1052
endif
if (any(tp(1)%p/=[1,2])) print *,1054
if (any(tp(2)%p/=[1,2])) print *,1055
!$omp end parallel

!$omp parallel firstprivate( ta )
!$omp single
if (.not.allocated(ta)) write(6,*)4001

if (.not.allocated(ta(1)%a)) then
                
    write(6,*)4002
endif
if (.not.allocated(ta(2)%a)) then
                
    write(6,*)4003
endif
if (any(ta(1)%a/=[1,2])) print *,4004
if (any(ta(2)%a/=[1,2])) print *,4005
  ta(1)%a =[3,4]
  ta(2)%a =[3,4]
!$omp end single
!$omp end parallel
if (any(ta(1)%a/=[1,2])) print *,4094
if (any(ta(2)%a/=[1,2])) print *,4095

end
call omp_set_num_threads(2)
call s1
print *,'pass'
end
