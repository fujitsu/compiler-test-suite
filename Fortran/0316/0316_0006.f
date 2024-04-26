       integer a(-1:5,3:9,10)
       integer i(3),j(3)
       parameter(i=lbound(a))
       parameter(j=ubound(a))
       print *,i
       print *,j
       end
