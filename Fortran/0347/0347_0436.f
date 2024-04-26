      program main
      dimension a(10),xxx(10)

      do 20 j=1,10
      xxx(j)=j
  20  a(j)=j

      x=0.
      do 10 i=1,10
        if(a(i)-5) 1,2,3
   1      b=3.
          go to 10
   2      b=2.
          go to 4
   3      b=3
  10  continue
      go to 5
   4  x=b
 5    write(6,*) x

      x=0.
      do 410 i=1,10
        if(a(i)-5) 41,42,43
  41      xxx(i)=3.
          go to 410
  42      xxx(6)=2.
          go to 44
  43      xxx(i)=3
 410  continue
      go to 45
  44  x=xxx(5)
 45   write(6,*) xxx,x
      stop
      end
