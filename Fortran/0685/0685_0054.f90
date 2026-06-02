      common /com/ a,b,i
      integer a(5) , b(5)
      i=100
      a=(/1,2,3,4,5/)
      b=(/1,2,3,4,5/)
!$omp parallel private(/com/)
      a=0;b=0
      i = 2
      b=(/(i,i=11,15)/)
      a(i:5) = 1
      if (any(a/=(/0,1,1,1,1/))) print *,"fail"
      if (any(b/=(/11,12,13,14,15/))) print *,"fail"
!$omp endparallel
  !$  if (.true.) then
  !$    if (any(a/=(/1,2,3,4,5/))) print *,"fail"
  !$    if (any(b/=(/1,2,3,4,5/))) print *,"fail"
  !$    if (i/=100) print *,"fail"
  !$  else
        if (any(a/=(/0,1,1,1,1/))) print *,"fail"
        if (any(b/=(/11,12,13,14,15/))) print *,"fail"
        if (i/=2) print *,"fail"
  !$  endif
      print *,'pass'
      end
