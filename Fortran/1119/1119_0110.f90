integer,pointer,dimension(:)::a1,a2,a3
call sub(a1,a2,a3)
print *,'pass'
contains
subroutine sub(a1,a2,a3)
integer,pointer,dimension(:)::a1,a2,a3
allocate(a1(2))
allocate(a2(2))
allocate(a3(2))
a1=1
a2=2
a3=3
!$omp parallel reduction(+:a1,a2,a3)
a1=a1+1
a2=a2*1
a3=a3-1
!$omp end parallel
if(any(a1/=[5,5])) print *,'err1'
if(any(a2/=[2,2])) print *,'err2'
if(any(a3/=[-1,-1])) print *,'err3'
end subroutine
end program
