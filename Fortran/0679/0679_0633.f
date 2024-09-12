      program main
      dimension a(100),b(100),c(100)
      do 1 i=1,100
        a(i)=i
        b(i)=i
        c(i)=i
   1  continue

      do 10 i=1,10
        n=i+1
        a(i+90)=a(n*2)
        n=i*3
        b(i+90)=b(n*2)
        n=10
        c(i+90)=c(n*2)
  10  continue
      write(6,*)  'a',a
      write(6,*)  'b',b
      write(6,*)  'c',c
      stop
      end
