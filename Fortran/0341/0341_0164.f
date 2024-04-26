      integer a(10)
      a=1
      do 10 i=1,10
         if(a(i).eq.10) goto 1
         a(i)=100
 1       if(a(i).eq.1) goto 10
         a(i)=200
 10   continue
      do 20 i=1,10
         if(a(i).eq.10) goto 2
         a(i)=100
 2       if(a(i).eq.1) goto 20
         a(i)=200
 20   continue
      if(a(5).eq.200) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
