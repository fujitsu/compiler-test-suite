       integer size
       parameter(size=2)
       real a(1:size),b(-size:size),c(size:size+2)
       a(1:size)=(8,8)
       b(-size:size)=(8,8)
       c(size:size+2)=(8,8)
       print *,a
       print *,b
       print *,c
       end

