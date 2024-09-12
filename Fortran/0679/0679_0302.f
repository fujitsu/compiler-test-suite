      dimension a(10),b(10)
      real*8    da(20),db(20)
      data a/10*0.0/,b/10*1.0/,da/20*0.0/,db/20*2.0/

      do 10 i=1,10,1
        a(i) = b(i)
  10  continue
      write(6,*) a

      do 20 i=1,10,2
        a(i) = b(i)
  20  continue
      write(6,*) a

      do 30 i=1,10,3
        a(i) = b(i)
  30  continue
      write(6,*) a

      n = a(1)
      do 40 i=1,10,n
        a(i) = b(i)
  40  continue
      write(6,*) a

      do 50 i=1,20,2
        da(i) = db(i)
  50  continue
      write(6,100) (da(k),k=1,20)
 100  format(10f5.2/)
      stop
      end
