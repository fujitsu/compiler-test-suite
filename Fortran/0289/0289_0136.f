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
      ns=0
      do 20 j=2,10
         do 21 i=1,j-1
            isum=isum+idat(j,i)
            ns=ns+1
   21   continue
   20 continue
      write(6,*) isum
      isum=isum/ns
      do 30 j=2,10
         do 31 i=1,j-1
            w=idat(j,i)
            idat(j,i)=idat(i,j)
            idat(i,j)=w
   31   continue
   30 continue
      jsum=0
      do 40 i=2,10
         do 41 j=1,i-1
            jsum=jsum+idat(j,i)
   41   continue
   40 continue
      write(6,*) jsum
      jsum=jsum/ns
      write(6,*) ns
      if((isum.eq.jsum).and.(jsum.eq.10)) then
        write(6,*) '*** ok ***'
        write(6,*) jsum
      else
        write(6,*) '*** ng ***'
        write(6,*) jsum
      endif
      stop
      end
