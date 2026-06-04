      integer,dimension(3)::i,j,k,l

!$omp parallel workshare
      i=1
      where(i==1)
        j=1
        k=j
        l=k
      elsewhere
        j=0
        k=j
        l=k
      endwhere
!$omp end parallel workshare

      if (any(i/=j) .or. any(i/=k) .or. any(i/=l)) print *,"fail"
      print *,'pass'

      end
