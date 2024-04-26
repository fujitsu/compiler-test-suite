      program main
      dimension a(10)
      do 20 j=1,10
  20  a(j)=j
      s=100.
      do 10 i=1,10
        if(a(i)-5) 1,2,3
   1    if(i.eq.3) then
          go to 4
        endif
   2      x=2.
          go to 5
   3      x=3.
   5      s=x+4
  10  continue
   4  continue
 600  write(6,*) x,s
      stop
      end
