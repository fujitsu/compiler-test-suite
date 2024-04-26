      real*8     a(20,20),b(20,20),c(20,20),d(20,20)
      data   a/400*2.024/,b/200*2.42,200*3.04/,c/400*4.048/,d/400*2.024/
       do 10 i=2,9
         a(i,i) =  b(i,i) + c(i,i) + d(i,i+1)
         do 20 j=10,19
           b(i,j) = c(i,j) + a(i,j) / 2.0
           c(i,j) = d(i,j) / 2.0 * a(i,j)
           d(i,j+1) = b(i,j-1) - a(i,j)
  20     continue
         c(10,i) = a(i,2) * b(i+1,9)
  10   continue
      write(6,*) ' ** a result ** '
      write(6,*) ((a(i,j),i=2,10),j=10,19)
      write(6,*) ' ** b result ** '
      write(6,*) ((b(i,j),i=2,10),j=10,19)
      write(6,*) ' ** c result ** '
      write(6,*) ((c(i,j),i=2,10),j=10,19)
      write(6,*) ' ** d result ** '
      write(6,*) ((d(i,j),i=2,10),j=10,19)
      stop
      end
