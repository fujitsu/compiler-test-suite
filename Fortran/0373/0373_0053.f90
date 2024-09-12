       real*16 a(10),c(10)
       logical*8 g
       data a/10*1/,g/.false./
       c = maxval(a,1,g)
       write(6,*) c
       end
