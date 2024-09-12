      program main
      dimension a(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      equivalence (k,l)

      k=6
      do 10 i=1,10
        n=k+i-5
        l=5
        a(i)=a(n)
  10  continue
      write(6,*)  a
      stop
      end
