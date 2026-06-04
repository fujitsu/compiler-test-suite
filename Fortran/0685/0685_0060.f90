      common /com/ p,x
      integer,pointer :: p
      integer,target  :: x
      x=100
      p=>x
!$omp parallel private(/com/)
      x=200
      p=>x
      if (p/=200) print *,"fail"
!$omp endparallel
  !$  if (.true.) then
  !$    if (p/=100) print *,"fail"
  !$  else
        if (p/=200) print *,"fail"
  !$  endif
      print *,'pass'
      end
