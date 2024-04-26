
       real a(2025),b(2025)
       data b/2025*1.0/
       k=1
       j=1
       do 10 i=1,2025
        if(b(i).gt.0) then
          a(k)=b(i)+2.0
          k=k+1
         else
          a(j)=b(i)+1.0
          j=j+1
        endif
 10    continue
       write (6,*) (a(i),i=1,2025,10)
       stop
       end
