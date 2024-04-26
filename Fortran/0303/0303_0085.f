      integer    xx(10)/1,0,2,0,0,1,1,2,1,0/
      integer    yy(10)/1,0,1,1,0,0,1,2,2,2/
      integer    zz(10)/1,0,1,1,0,0,1,2,2,2/
      integer    x/0/
      integer    resx(10)/1,2,3,4,5,6,7,8,9,10/
      integer    resy(10)/1,0,1,1,0,0,1,2,2,2/
      integer    resz(10)/2,2,4,5,5,6,8,10,11,12/


      if(yy(1).gt.0) then
        do 41 j=1,10
          if(yy(j).eq.1) then
            goto 45
          else
            goto 88
          endif
   45     x = 0
          do 50 k=1,10
            xx(k) = x + k
            zz(k) = yy(k) + k
   50     continue
   41   continue
      endif
   88 continue

      do 99 i=1,10
        if (xx(i).ne.resx(i)) goto 100
        if (yy(i).ne.resy(i)) goto 100
        if (zz(i).ne.resz(i)) goto 100
   99 continue
      write(6,*) 'ok'
      goto 200
  100 continue
      write(6,*) 'ng'
      write(6,*) xx
      write(6,*) yy
      write(6,*) zz
  200 continue
      stop
      end
