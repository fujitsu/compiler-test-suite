      program main
      dimension idat(10,10)
      n=1
      do 10 i=1,10
      do 10 j=1,10
         idat(j,i)=2**n
         if(mod(j,2).eq.1)  then
           n=4
         else
           n=2
         endif
   10 continue
      isum=0
      do 20 j=1,10
      do 20 i=1,10
         isum=isum+idat(j,i)
   20 continue
      if(isum.eq.998) then
        write(6,*) '*** ok ***'
        write(6,*) isum
      else
        write(6,*) '*** ng ***'
        write(6,*) isum
      endif
      stop
      end
