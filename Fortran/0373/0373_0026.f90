       integer*8 a(10),c(10)
       logical*4 g
       data a/10*1/,g/.false./
       c = minval(a,1,g)
       write(6,*) c
       end