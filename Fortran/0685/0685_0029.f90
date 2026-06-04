      common /com/ i,p
      integer,pointer::p
      integer,target::i
      i=1
      p=>i  
!$omp parallel private(/com/)
      i=-1
      p=> i  
!$omp end parallel
!$    if (.true.) then
!$      if (p/=1) print *,"fail"
!$    else
        if (p/=-1) print *,"fail"
!$    endif
      print *,'pass'
      end
