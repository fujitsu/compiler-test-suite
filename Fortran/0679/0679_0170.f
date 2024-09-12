      program main
      real*4 ra(10,10)
      data ra/100*1./

      call sub(ra,4)

      write(6,*) 'ra(10,*)=',(ra(10,i),i=1,10)
      stop
      end
      subroutine sub(a,n)
      dimension a(10,n+2:10)
      do 100 j=1,10
        do 10 i=n+2,10
          a(j,i)=0.0
10      continue
100   continue
      return
      end
