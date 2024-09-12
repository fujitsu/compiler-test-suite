      complex*16 c(5,5)/25*(1.,1.)/,cs
      n=5
      do 10 i=1,n
       cs=i
       do 10 j=1,n
        c(i,j)=cs
  10  continue
      write(6,*) c

      do 20 i=1,n
       cs=-i
       do 20 j=1,n
        c(i,j)=cs
  20  continue
      write(6,*) c
      stop
      end
