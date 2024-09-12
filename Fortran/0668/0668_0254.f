      real a(100),b(10,100)
      call sub(a,b)
      do 1 j=1,100
        s = a(j)
        do 2 i=1,10
          s = s + b(i,j)
    2   continue
        a(j) = s
    1 continue
      write(6,*) a
      stop
      end
      subroutine sub(a,b)
      real a(100),b(10,100)

      do 1 j=1,100
        a(j) = j
        do 2 i=1,10
          b(i,j) = i
    2   continue
    1 continue
      return
      end
