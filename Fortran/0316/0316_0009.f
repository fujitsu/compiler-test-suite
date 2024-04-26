       integer source(10)
       integer shape(2)
       integer pad(1)
       integer order(2)
       integer re(2,5)
       parameter (source=(/1,2,3,4,5,6,7,8,9,10/))
       parameter (shape=(/2,5/))
       parameter (pad=(/1/))
       parameter (order=(/2,1/))
       parameter (re=reshape(source,shape,pad,order))
       print *,source
       print *,shape
       print *,pad
       print *,order
       print *,re
       end
