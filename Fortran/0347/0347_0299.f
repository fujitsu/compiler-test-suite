      real*4    a(20),b(20),c(20),d(20)
      integer*4 l(20)
      data  a,b,c,d/40*1.,20*2.,20*3./,nn/2/
      do 5 i=1,20
  5     l(i)=i

      do 10 j=1,nn
      do 10 i=1,20
        a(l(i))=b(i)+c(i)
        b(l(i))=a(i)+c(i)
 10   continue

      do 20 j=1,nn
       do 20 i=1,20
        d(l(i))=b(i)+c(i)
        c(l(i))=a(i)+d(i)
 20   continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      write(6,*) ' c= ',c
      write(6,*) ' d= ',d
      stop
      end
