      program main
      logical l(10)/5*.true.,5*.false./
      real    a(10)/1,2,3,4,5,6,7,8,9,10/,b(10)/10*1./

      do 10 j=1,10
        is1 = j
  10  continue
      write(6,*) is1

      is1 = 0
      do 20 i=1,10
        if(l(i)) is1 = i
 20   continue
      write(6,*)  is1

      is1 = 0
      s1 =  a(1)
      s2 = 0.
      do 30 i=1,10
        if(s1.ge.a(i)) then
          s1 = a(i)
          is1 = i
        endif
        s2 = s2 + b(i)
 30   continue
      write(6,*)  s1,is1,s2
      stop
      end
