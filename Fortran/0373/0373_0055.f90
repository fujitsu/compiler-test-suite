       real*16 a(10),c(10)
       logical*4 g
       data a/1,2,3,4,5,6,7,8,9,10/
       data g/.true./

       c = pack(a,g)
       write(6,9) c
9      format(5f10.5)
       end
