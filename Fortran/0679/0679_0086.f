      program main
      real    a(10,6,6),b(10,6),c(10)/1,2,3,4,5,6,7,8,9,0/
      data    n/10/
      do 10 i=1,10
       s=i+c(i)
       do 11 j=1,6
        b(i,j)=s*s
        do 12 k=1,6
         a(i,j,k)=s/8.
  12    continue
  11   continue
  10  continue
      write(6,*) a
      write(6,*) b

      do 110 i=1,n
       s=i+c(i)
       do 111 j=1,6
        b(i,j)=s*s-2
        do 112 k=1,6
         a(i,j,k)=s/8.-3
 112    continue
 111   continue
 110  continue
      write(6,*) a
      write(6,*) b
      stop
      end
