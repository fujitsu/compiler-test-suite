c
      program   rst01
      dimension ary1(10),ary2(10)
      is = 1
      ie = 10
      iv = is*ie
      rx = 1.0
      do 10 i=is,ie
        rx = rx-1.0
        ary1(i) = rx+iv
        iv = iv+i
        ary2(i) = 0.0
        if (iv.gt.16) ary2(i)=ary1(i)
   10 continue
      if ((ary2(3).eq.0.0).and.(ary2(4).ge.1.3e1)) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        do 20 i=1,10
          write(6,*) 'ary2(',i,')=',ary2(i)
   20   continue
      endif
      stop
      end
