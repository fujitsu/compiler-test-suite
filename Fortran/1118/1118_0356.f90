character(2),allocatable::ch(:)
logical(1)::l1
l1=.false.
allocate(ch(2))
ch="12"
!$omp task if(.false.)
ch="34"
!$omp end task
if(ch(1)/="12") print *,'err1=',ch
!$omp task if(l1.neqv.l1)
ch="56"
!$omp end task
if(ch(1)/="12") print *,'err2=',ch

!$omp task if(1.ne.1)
ch="34"
!$omp end task
if(ch(1)/="12") print *,'err3=',ch
!$omp task if(.false.)
ch="56"
!$omp end task
if(ch(1)/="12") print *,'err4=',ch

!$omp task
!$omp task if(l1)
ch="34"
!$omp end task
if(ch(1)/="12") print *,'err5=',ch
!$omp task if(logical(.false.))
ch="56"
!$omp end task
!$omp end task
if(ch(1)/="12") print *,'err6=',ch
print *,'pass'
end
