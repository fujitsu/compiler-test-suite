      integer(kind=4),dimension(3)::a
      integer(kind=4),dimension(3)::c1
      a=1
      c1=2
      call sub(3,3,a,c1)
      print *,'pass'
      end program
      subroutine sub(m,n,a,c)
      integer(kind=4)::a(*),c(*)
      do 120 i=1,m
      c(i)=0
      do 130 k=1,n
!$omp atomic capture
       a(i)=c(i)
      c(i)=c(i)+a(i)
!$omp end atomic
  130 continue
  120 continue
      return
  200      do 320 i=1,m
      c(i)=0
      do 330 k=1,n
!$omp atomic capture
           a(i)=c(i)
      c(i)=c(i)+a(k)
!$omp end atomic
  330 continue
  320 continue
      return
      end
