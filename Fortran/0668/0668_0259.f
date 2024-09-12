      program main
      real a(4096),b(4096)
      data b/4096*3.0/
      do 10 i=1,4096
        a(i) = b(i)
   10 continue
      write(6,*) a
      stop
      end
