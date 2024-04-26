      program snks07
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
        write(6,*) 'no.1: *** ok ***'
        write(6,*) isum
      else
        write(6,*) 'no.1: *** ng ***'
        write(6,*) isum
      endif
      k = 0
      do 30,i=1,10,1
        k = k+ int(sqrt(real(i)))
  30  continue
      if(k .eq. 19) then
        write(6,*) 'no.2:*** ok ***'
      else
        write(6,*) 'no.2:*** ng ***'
      endif
      stop
      end
