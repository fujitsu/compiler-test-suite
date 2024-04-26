      program main
      real*4 ra(10),rb(10),rc(10)
      real*8 da(10),db(10),dc(10)
      logical*4 m(10)/5*.true.,5*.false./
      data   ra/1,2,3,4,5,6,7,8,9,10/
      data   rb/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.10/
      data   rc/1,2,-3,4,-5,6,7,-8,9,-10/
      data   da/1,2,3,4,5,6,7,8,9,10/
      data   db/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.10/
      data   dc/1,2,-3,4,-5,6,7,-8,9,-10/
      do 10 i=1,10
        ra(1) = ra(1) + da(i) + db(i) + dc(i)
  10  continue
      do 20 i=1,10
        if(m(i)) ra(2) = ra(2) + da(i)*db(i)
  20  continue
      write(6,*) ' ra = ',ra
      do 30 i=1,10
        dc(1) = dc(1) + ra(i) + rb(i) + rc(i)
  30  continue
      do 40 i=1,10
        if(m(i)) dc(2) = dc(2) + ra(i) + rb(i) + rc(i)
  40  continue
      write(6,*) ' dc = ',dc
      stop
      end
