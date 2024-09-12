      dimension a(10),b(10),c(10)
      data n/10/
      do 10 i=1,n
        a(i)=1.0
        b(i)=2.0
        c(i)=1.0
 10   continue
      call sub(n,a,b,c)
      write(6,*) c
      stop
      end
      subroutine sub(n,a,b,c)
      dimension a(n),b(n),c(n)
      logical l(10)/.true.,.false.,.true.,.false.,.true.,
     *              .true.,.false.,.true.,.false.,.true./
      do 10 i=2,n
        if (l(i)) then
          s = sqrt(a(i)) + b(i)
          c(i) = c(i-1) + s
        endif
  10  continue
      write(6,*) ' i = ',i
      return
      end
