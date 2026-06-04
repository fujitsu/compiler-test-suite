      integer,dimension(3,3)::c
      integer,dimension(6)::d
      integer,dimension(9)::e
!$omp parallel workshare
      c =reshape((/0,3,2,4,3,2,5,1,2/),(/3,3/))
      d =pack(c,mask=c.ne.2)
      e =pack(c,mask=.true.)
!$omp end parallel workshare
      if (any(d/=(/0,3,4,3,5,1/))) print *,"fail"
      if (any(e/=(/0,3,2,4,3,2,5,1,2/))) print *,"fail"
      print *,'pass'
      end
