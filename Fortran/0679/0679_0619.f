      program main
      dimension a(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      do 20 i=1,10
        n=10
        a(i)=a(n)
  20  continue
      write(6,*)  a
      stop
      end
