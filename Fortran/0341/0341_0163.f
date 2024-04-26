      integer a(10)
      a=1
      do 10 i=1,10
         if(a(i)) 10,100,200
 100     a(i)=10
 200     a(i)=20
 10   continue
      do 20 i=1,10
         if(a(i).eq.1) go to 20
         a(i) = 5
 20   continue
      if(a(5).eq.5) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
