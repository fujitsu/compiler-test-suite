       integer*8 a(3,4)
       integer*4 c(2)
       logical*4 mask
       data a/0,-5,8,-3,3,4,-1,2,1,5,6,-4/
       c = minloc(a)
       write(6,*) c
       end
