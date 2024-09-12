      program main
      real*4  a(20),b(20,20),c(20,20,20)
      data   a,b,c/20*1.,400*2.,8000*3./
      do 10 i=1,15
       do 20 j=1,15
        b(i,j) = a(i)
        do 30 k=1,20
          c(i,j,k)=c(i,j,k)+b(i,j)
  30    continue
  20   continue
       a(i) = float(i)
  10  continue
      write(6,*) b
      write(6,*) c
      stop
      end
