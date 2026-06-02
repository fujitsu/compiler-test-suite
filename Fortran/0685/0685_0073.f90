      integer,pointer::p=>null()
      integer,target ::x=10
      allocate(p)
      p=>x
      if (p/=10) print *,"fail" 
!$omp parallel firstprivate(x),private(p)
      p=>x
      x = x + 1
      if (p/=11) print *,"fail" 
      if (.not.associated(p)) print *,"fail"
      p=>null()
!$omp end parallel
      p=>x
      if (p/=10) print *,"fail" 
      print *,'pass'
      end
