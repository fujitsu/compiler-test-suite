      integer,dimension(3)::i,j

      i=(/1,0,1/)
!$omp parallel workshare
      where(i==1)
        j=1
      elsewhere
        j=0
      endwhere
!$omp end parallel workshare

      if (any(i/=j)) print *,"fail"
      print *,'pass'

      end
