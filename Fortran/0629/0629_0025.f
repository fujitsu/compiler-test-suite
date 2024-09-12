      logical a(10)/10*.false./
       do 10 i=1,9
         a(i) = '5'=='5'
 10    continue
      write(6,*) a
      stop
      end
