character(2),allocatable::ch
logical(1)::l1
l1=.false.
ch="12"
!$omp parallel if(.false.)
ch="34"
!$omp end parallel
if(ch/="34") print *,'err1=',ch
!$omp parallel if(l1.neqv.l1)
ch="56"
!$omp end parallel
if(ch/="56") print *,'err2=',ch

!$omp parallel if(1.ne.1)
ch="34"
!$omp end parallel
if(ch/="34") print *,'err3=',ch
!$omp parallel if(.false.)
ch="56"
!$omp end parallel
if(ch/="56") print *,'err4=',ch

!$omp parallel if(l1)
ch="34"
!$omp end parallel
if(ch/="34") print *,'err5=',ch
!$omp parallel if(logical(.false.))
ch="56"
!$omp end parallel
if(ch/="56") print *,'err6=',ch
print *,'pass'
end
