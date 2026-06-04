      common /com/ p
      integer,pointer :: p
      integer,target  :: x=100
      allocate(p)
      p=>x
!$omp parallel private(/com/)
      allocate(p)
      x=200
!$omp barrier
      p=>x
!$omp parallel private(/com/)
      allocate(p)
      x=500
      p=>x
      if (p/=500) print *,"fail"
      p=>null()
!$omp endparallel
!$omp barrier
      if (p/=500) print *,"fail"
      p=>null()
!$omp endparallel
      if (p/=500) print *,"fail"
      p=>null()
      print *,'pass'
      end
