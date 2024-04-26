      program main
      dimension   a(20,20),b(20,20),c(20,20),l(20)
      data  a,b,c/400*1.,200*2.,400*3.,200*4./
      do 10 i=20,1,-1
  10    l(i) = i
      do 20 i=2,10
       do 20 j=11,19
         ip = l(j) + 1
         a(ip,j) = a(i,j) + b(l(i),j)
         b(l(j),j) = a(l(i),j-1) * c(i,j)
  20  continue
      do 30 i=11,19
       ip = l(i) +1
       do 30 j=2,10
         jp = l(j) + 1
         c(jp,j) = a(l(j),j) + b(l(i),j)
         b(ip,j) = a(l(i),j-1) * c(i,j)
         a(ip,j) = c(ip,j+1) - b(jp,j)
  30  continue
      write(6,*) ' a = ' ,a
      write(6,*) ' b = ' ,b
      write(6,*) ' c = ' ,c
      stop
      end
