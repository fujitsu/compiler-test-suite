      program main
      real*8 a(10),b(10)
      integer*2 cnt,okcnt,ngcnt
      do 19 i=1,10
   11  a(i)=0.
   19  b(i)=0.
      do 29 i=1,10
   21  go to 25
   29  b(i)=real(i)
      go to 30
   25  a(i)=real(i)
      go to 29
   32  a(i)=a(i)+.333
       go to 39
   30 do 39 i=1,10
       go to 32
   39  b(i)=b(i)+.333
      call sub(a,b)
      okcnt=0
      ngcnt=0
      cnt=0
      do 49 i=1,10
       if (a(i)-b(i)) 45,46,45
   46  okcnt=okcnt+1
   49  cnt=cnt+1
      print *,'***         ok    = ',okcnt
      print *,'***         ng    = ',ngcnt
      print *,'***         total = ',cnt
      stop
   45 ngcnt=ngcnt+1
      go to 46
      end
      subroutine sub(a,b)
      real*8 a(10),b(10)
      do 19 i=1,10
   11  a(i)=0.
   19  b(i)=0.
      do 29 i=1,10
   21  go to 25
   29  b(i)=real(i)
      go to 30
   25  a(i)=real(i)
      go to 29
   32  a(i)=a(i)+.333
       go to 39
   30 do 39 i=1,10
       go to 32
   39  b(i)=b(i)+.333
      return
      end
