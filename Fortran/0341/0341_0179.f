      integer a(10)
      a=1
      do 10 i=1,10
         if(a(i)) 300,100,200
 100     a(i)=10
 200     a(i)=20
 10   continue
 300  a(5) = 5
      if(a(2).eq.20) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
