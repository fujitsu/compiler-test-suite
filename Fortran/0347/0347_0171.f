      real*8    a(50,50),b(50,50),c(50,50)
      data      a/2500*2.024d0/,b/2500*3.02d0/,c/2500*4.02d0/
      do 10 i=2,16
        do 10 j=2,15,2
          a(i,j*2) = b(i,j) + c(i,j*2)
          b(j+1,i) = c(i,j*2+1) + a(2*j,i)
          c(j*2,i) = a(i,j) * b(i,j+1)
 10   continue
      write(6,*) ' *** result a value *** '
      write(6,*) ((a(i,j),i=2,15),j=4,15)
      write(6,*) ' *** result b value *** '
      write(6,*) ((b(i,j),i=2,15),j=3,14)
      write(6,*) ' *** result c value *** '
      write(6,*) ((c(i,j),i=2,15),j=2,13)
      do 20 i=2,17,2
        do 20 j=2,18,3
          a(i,j*2) = b(2*j,i) + c(i,j*2)
          b(j+1,i+1) = c(i,j*2+1) + a(2*j,i)
          c(j*2,i) = a(2*j-1,i) * b(i,j+1)
 20   continue
      write(6,*) ' *** result a value *** '
      write(6,*) ((a(i,j),i=2,17),j=4,19)
      write(6,*) ' *** result b value *** '
      write(6,*) ((b(i,j),i=2,16),j=3,18)
      write(6,*) ' *** result c value *** '
      write(6,*) ((c(i,j),i=4,19),j=2,17)
      stop
      end
