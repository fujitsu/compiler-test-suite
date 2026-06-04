       integer*1 i1
1      data = i1()
2      print *,data
3      end
 
5      function i1()
6      integer*1 i1
7      common/blk/a(1:5),b/nam/i,j,y
8      i1 = 1
9      print *,a
10     print *,b
11     print *,i
12     print *,j
13     print *,y
14     end
 
16     block data
17     common/blk/a(1:5),b/nam/i,j,y
18     data a,b/6*0.0/,i,j/0,1/,y/5.0/
19     end
