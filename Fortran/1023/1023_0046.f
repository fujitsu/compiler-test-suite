       common /com1/ p
       integer a
       pointer (p,a)
       p=loc(x)
       a=12
       print *,a
       end
