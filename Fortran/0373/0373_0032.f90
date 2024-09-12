       integer*8 a(5),c(5),b(5)
       logical*8 g(5)
       data a/5*1/,b/5*8/,g/.false.,.false.,.false.,.true.,.false./

       c = unpack(a,g,b)
       write(6,*) c
       end
