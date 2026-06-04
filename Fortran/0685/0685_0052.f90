      common /com/ k
      pointer:: k         
      allocate(k)
      k=2
!$omp parallel private(/com/)
      allocate(k)
      k=200
      if (k/=200) print *,"fail"
!$omp end parallel 
 !$   if (.true.) then
 !$     if (k/=2) print *,"fail"
 !$   else
        if (k/=200) print *,"fail"
 !$   endif
      print *,'pass'
      end
