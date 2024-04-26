      program main
      dimension a(100,10),b(100,10)
      dimension c(100),d(100)
      do 10 i=1,100
      c(i)=i*0.12+i*1.2
      d(i)=i*0.11+i*2.1
      do 10 j=1,10
      b(i,j)=i+j
  10  a(i,j)=(i+j)*12.4
      write(6,*) a,b
      write(6,*) c,d
      stop
      end
