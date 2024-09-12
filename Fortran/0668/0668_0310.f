      program main
      real*8 a(1000,1000),b(1000,1000),c(1000,1000)
      common /com/a,b,c
      do 10 i=1,1000
        do 10 j=1,1000
      a(i,j) = 1.0
      b(i,j) = 2.0
      c(i,j) = 3.0
   10 continue
      write(6,*) (a(1,i)+1.0,b(2,i)+1.0,c(3,i)+1.0,i=10,20)
      do 20 i=1,1000
       a(2,21) = 3.0
        do 30 j=1,1000
      a(i,j) = a(i,j) + b(i,j)
      a(2,22) = 4.0
   30 continue
       a(i,1000) = c(i,1000) - b(i,1000)
   20 continue
      write(6,*) (a(2,i)+1.0,b(2,i)+1.0,c(2,i)+1.0,i=20,30)
      do 60 i=1,1000
        do 70 j=1,1000
      a(1,42) = 4.0
      a(i,j) = c(1,41) + b(i,j)
      b(i,j) = a(i,41) - b(i,j)
      c(i,j) = 6.0
   70 continue
   60 continue
      write(6,*) (a(1,i)+1.0,b(1,i)+1.0,c(1,i)+1.0,i=40,50)
      do 80 i=1,1000
        do 90 j=1,1000
      a(i,j) = 4.0
      a(i,j) = c(1,41) - b(i,j)
      b(i,j) = a(i,41) + b(i,j)
      c(i,j) = 6.0
   90 continue
   80 continue
      write(6,*) (a(5,i)+1.0,b(5,i)+1.0,c(5,i)+1.0,i=40,50)
      do 100 i=1,1000
        do 110 j=1,1000
      a(i,j) = b(i,j) + c(i,j)
      b(1,j) = 4.0
      c(1,j) = b(i,j) - a(i,1)
  110 continue
      a(i,1) = 3.0
  100 continue
      write(6,*) (a(1,i)+1.0,b(1,i)+1.0,c(1,i)+1.0,i=1,10)
      write(6,*) '   ***** end *****   '
      stop
      end
