      program main
      integer b
       b = 1
      do 100 i=1,10
       b = b * 2
       b = b + 1
  100 continue
      n = b
       call  fno03(n)
      stop
      end
      subroutine fno03(n)
      real   a(5000)
      data a/5000*5/
      do 10 i=1,n
        a(i) = 2.0
   10 continue
      write(6,*) a
      return
      end
