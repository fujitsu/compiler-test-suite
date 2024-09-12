      program main
      dimension a(10),b(10),c(10),d(10),e(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data b/11,12,13,14,15,16,17,18,19,20/
      data c/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data d/11,12,13,14,15,16,17,18,19,20/

      k=10
      do 10 i=1,10
        n=k
        a(i)=a(n)
        b(i)=b(n)
  10  continue
      write(6,*) 'a',a
      write(6,*) 'b',b

      n=10
      do 20 i=1,n
        c(i)=c(n)
        d(i)=d(n)
  20  continue
      write(6,*) 'c',c
      write(6,*) 'd',d

      do 30 i=1,10
        n=i
        e(n)=i
  30  continue
      write(6,*) 'e',e
      stop
      end
