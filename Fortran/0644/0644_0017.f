      integer*2 i2a(10), i2aa(10,20)


      do 10,i=1,10,1
 10      i2a(i)=i
      print *,"Result = ",i2a
      call flush(6)
      print *,"Result = ",i2a
      call flush(6)

      do 20,i=1,10,1
         do 20,j=1,20,1
 20         i2aa(i,j)=i*j
      print *,"Result = ",i2aa
      call flush(6)
      print *,"Result = ",i2aa
      call flush(6)

      stop
      end
