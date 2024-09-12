      program main
      complex*16 a(10)
      data   a/ 2*(1.0,1.0),2*(2.0,2.0),2*(3.0,3.0),
     *          2*(4.0,4.0),2*(5.0,5.0)/
      k=2
      do 10 i=1,10,2
        a(i) = a(k)
  10  continue
      write(6,*) 'a',a
      stop
      end
