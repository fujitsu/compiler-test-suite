      program main
      real*4  a(10),b(10)
      data b/10*2.0/
        do 10 i=1,10
      a(i)=b(i)
   10 continue
      write(6,*) a
      stop
      end
