subroutine s1
 type x
  integer::x1
  integer,allocatable:: x2(:)
 end type
 type(x),allocatable:: v(:)
  allocate( v(2) )
  allocate( v(2)%x2(2),source=[1,2] )
!$omp parallel firstprivate( v)
 if(v(2)%x2(1)/=1) print *,101
 if(v(2)%x2(2)/=2) print *,102
 v(2)%x2(2)=3
 if(v(2)%x2(2)/=3) print *,103
!$omp end parallel
 if(v(2)%x2(1)/=1) print *,111
 if(v(2)%x2(2)/=2) print *,112
end
call s1
print *,'pass'
end
