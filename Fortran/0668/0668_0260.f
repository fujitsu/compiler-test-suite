      program main
      real   a(1000)
      do 10 i=1,1000
        a(i) = 1.1
   10 continue
      write(6,*) a
      stop
      end
