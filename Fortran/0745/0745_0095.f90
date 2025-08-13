       character*10 c1
       character*20 c2
       character*30 sub2,xx
       c1="c1"
       c2="c2"
       xx=     sub2(1,c1,2,c2)
       if (xx/='sub2')write(6,*) "NG"
       print *,'pass'
       end
       function sub2(data1,c1,data2,c2)
       character*(*) c1,c2,sub2,ent2,c3
       integer*4 data1,data2
       sub2="sub2"
       write(3,*) c1
       return
       entry ent2(c1,c2,c3)
       ent2="ent2"
       print *,c1,c2,c3,ent2
       end
