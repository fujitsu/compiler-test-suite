
       real a(10),b(10)
       integer l(10),m(10)
       data b/10*1.0/
       data m/1,2,3,4,5,6,7,8,9,1/
       data l/1,0,1,1,0,1,0,0,1,0/
       a = 0

       do 10 i=1,10
        if(l(i).gt.0)then
          a(m(i))=b(m(i))+1
        endif
 10    continue
       write (6,*) a
       stop
       end
