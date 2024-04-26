      dimension a(10),b(10),c(10)
      data      b/2*1.0,3*2.0,3.14159265,4*5.0/,c/10*2.0/
      data      l1/0/,l2/0/,l3/0/,l4/0/,l5/0/,n/10/
      do 10 i=1,10
        do 30 k=1,10
          l1=l1+1
          l2=l2-2
          l4=l4-n
          l5=k
          a(k)=b(k)+c(k)
  30    continue
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*)    l2,l3,l4,l5
      stop
      end
