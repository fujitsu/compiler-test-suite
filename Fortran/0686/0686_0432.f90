      integer,dimension(3)::i,j

!$omp parallel workshare
      i=(/1,0,1/)
      j=(/0,1,0/)
      where(i==1) i=1
      where(i==1)
      endwhere
      where(i==1)
      elsewhere
      endwhere
      where(i==1)
      endwhere
      where(i==1) i=1
!$omp end parallel workshare

      if (any(i/=(/1,0,1/))) print *,"fail"
      if (any(j/=(/0,1,0/))) print *,"fail"
      print *,'pass'

      end
