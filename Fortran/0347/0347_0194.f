      integer a(100)
      data n/100/
      do 10 i=1,100
         a(i) = i
   10 continue
      call sub(a,n)
      write(6,*) a
      stop
      end
      subroutine sub(a,n)
      integer a(n)
      do 10 i=1,n
         a(i) = a(i) + 1
   10 continue
      return
      end
