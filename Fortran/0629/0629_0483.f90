       integer*4 i4
       integer a(10)
       a=(/((i4,i=1,1),i4=1,10)/)
       write(6,*) a
       end
