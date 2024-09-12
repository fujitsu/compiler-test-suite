       integer*8 a(10),b(10,10),c(10)
       data a/10*1/,b/100*5/
       c = matmul(a,b)
       write(6,*) c
       end
