       character*10 c1
       character*20 c2
       character*30 sub,rc,sub2,ent2
       c1="abcdefg"
       c2="hijklmno"
       rc= sub(1,c1,2,c2)
       rc= sub2(1,c1,2,c2)
       rc= ent2(c1,c2,"ENTRY")
       end
       function sub(data1,c1,data2,c2)
       character*(*) c1,c2,sub,ent
       integer*4 data1,data2
       sub="Test"
       c1="Test"
       c2="TEST"
       print *,data1,data2,c1,c2
       return
       entry ent()
       end
       function sub2(data1,c1,data2,c2)
       character*(*) c1,c2,sub2,ent2,c3
       integer*4 data1,data2
       sub2="Test"
       c1="Test"
       c2="TEST"
       print *,data1,data2,c1,c2
       return
       entry ent2(c1,c2,c3)
       ent2="ENTRY"
       print *,c1,c2,c3,ent2
       end
