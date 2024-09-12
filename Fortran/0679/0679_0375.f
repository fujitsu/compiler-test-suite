       integer*4         iv(50)
       real*8 a(50),b(50),c(50),d(50),e(50)
       data a,b,c,d,e/50*6.,50*5.,50*4.,50*3.,50*0./
       do 10 i=1,50
         iv(i)=i
10     continue
       do 20 i=1,50
         if( iv(i) .gt. 10 ) then
             a(i)=a(i)+a(i)+i
         elseif( iv(i) .gt. 20 ) then
             a(i)=a(i)+a(i)+i
             b(i)=b(i)+b(i)+i
         elseif( iv(i) .gt. 30 ) then
             a(i)=a(i)+a(i)+i
             b(i)=b(i)+b(i)+i
             c(i)=c(i)+c(i)+i
         elseif( iv(i) .gt. 40 ) then
             a(i)=a(i)+a(i)+i
             b(i)=b(i)+b(i)+i
             c(i)=c(i)+c(i)+i
             d(i)=d(i)+d(i)+i
         elseif( iv(i) .gt.  50 ) then
             a(i)=a(i)+a(i)+i
             b(i)=b(i)+b(i)+i
             c(i)=c(i)+c(i)+i
             d(i)=d(i)+d(i)+i
             e(i)=d(i)+d(i)+i
         endif
       e(i)=a(i)+b(i)+c(i)+d(i)
20     continue
       write(6,*) e
       stop
       end
