      complex(kind=2),dimension(3)::a
      complex(kind=2),dimension(3)::c1
      a=1
      c1=2
      call sub(3,3,a,c1)
      print *,'pass'
      end program
      subroutine sub(m,n,a,c)
      complex(kind=2)::a(*),c(*)
      do 120 i=1,m
      c(i)%re=0
      do 130 k=1,n
!$omp atomic capture
       a(i)%re=c(i)%re
      c(i)%re=c(i)%re+a(i)%re
!$omp end atomic
  130 continue
  120 continue
      return
  200      do 320 i=1,m
      c(i)%re=0
      do 330 k=1,n
!$omp atomic capture
           a(i)%re=c(i)%re
      c(i)%re=c(i)%re+a(k)%re
!$omp end atomic
  330 continue
  320 continue
      return
      end
