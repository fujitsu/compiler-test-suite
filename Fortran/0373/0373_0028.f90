       integer*8 a(6),b(2),c(2,4),d(2),e(2)
       data a/6*1/,b/2,4/,d/0,0/,e/2,1/
       c = reshape(a,b,d,e)
       write(6,*) c
       end
