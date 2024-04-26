       integer a(3),b(3),c,d(3)
       parameter (a=(/3,2,1/))
       parameter (b=(/1,3,2/))
       parameter (c=1)
       parameter(d=max(a,b,c))
       print *,a,b,c
       print *,d
       end
