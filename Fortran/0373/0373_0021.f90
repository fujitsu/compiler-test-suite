       integer*8 a(10),c(10)
       data a/10*8/
    
       c = eoshift(a,1)
       write(6,*) c
       end
