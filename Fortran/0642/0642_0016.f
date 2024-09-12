       print *,'pass'
       end
       subroutine pro
       integer a(10)
       integer b(10,10)
       integer c(10,10,10)
       integer d(10,10,10,10)
       integer e(10,10,10,10,10)
       a(5)=10
       i=a(5)
       i=a(8)
       b(4,4)=5
       i=b(4,4)
       i=b(4,5)
       c(4,4,3)=3
       i=c(4,4,3)
       i=c(4,5,9)
       d(3,4,4,3)=3
       i=d(3,4,4,3)
       i=d(4,3,5,9)
       e(3,4,4,3,6)=3
       i=e(3,4,4,3,6)
       i=e(4,6,3,5,9)
       end
