      program main
      real*8    a,b,k,f,d,c,add
      dimension a(10,10),b(10,10),c(10,10),k(10,10)
      dimension f(10,10),d(10,10)
      do 10 i=1,10
       do 10 j=1,10
         k(i,j)=10.0*dfloat(j)
   10 continue
      do 1 i=1,10
       do 1 j=1,10
         a(j,i)=10.0*dfloat(i)+k(i,j)
         b(i,j)=k(i,j)
         c(i,j)=k(i,j)+a(j,i)+dfloat(j)
         d(j,i)=a(1,1)+b(i,j)+dfloat(i)
         f(j,i)=d(j,i)
    1 continue
      do 2 i=1,10
       base=dabs(1.0+dmod(b(1,i)*2.3,d(i,3)))
       do 2 j=1,10
      c(i,j)=dmod(b(i,j),dfloat(i))/base+b(i,j)/dfloat(i)+c(i,j)
        d(j,i)=dmod(dmod(a(j,i),dfloat(10)),a(i,j))+d(j,i)
        f(i,j)=(b(1,i)*2.3)/d(i,3)+f(i,j)+b(i,j)/dfloat(i)
    2 continue
      write(6,*) 'loop no.1 end'

      do 3 j=1,10
       do 3 i=1,10
3      k(i,j)=dmod(a(i,j),dfloat(10))/a(i,j)
      write(6,*) 'loop no.2 end'

      add=0
      do 4 j=1,10
       do 4 i=1,10
    4   add=add+k(i,j)+d(i,j)

      do 5 i=1,10
       do 5 j=1,10
    5   add=add+d(j,i)+d(i,j)

      do 6 i=10,5,-1
       do 6 j=1,5
         add=add+a(j,i)
    6 continue

      do 7 i=1,5
       do 7 j=6,10
         add=add+a(j,i)
    7 continue
       write(6,*) 'add=',add

      if (idint(add).eq.30050) then
      write(6,100)
  100 format(1h,'** test is ok||| **')
      else
      write(6,200)
  200 format(1h,'** test is ng||| **')
      endif
      stop
      end
