        program main
        integer indexar,pary(10)
        integer index,index2,ary(10),ary2(10)
        pointer (pi,index),(pi,index2),(pa,ary),(pa,ary2)

        pa=loc(pary(1))
        pi=loc(indexar)
        print *, '=== start ==='

        do 10 i=1,10
          indexar = i
          ary (index ) = index2
          ary2(index2) = index
   10  continue
        indexar=1
        do 90 i=1,10
   90   print *, ary(i),ary2(i),pary(i)
        do 20 i=1,10
          pary(i) =  ary(index)+ary2(index2)
          pary(i) =  ary(index)+ary2(index2)
          pary(i) = (ary(index)+ary2(index2))/4
   20   continue
        do 99 i=1,10
   99   print *, ary(i),ary2(i),pary(i)
        print *, '=== end   ==='
  100   stop
        end
