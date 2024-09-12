      real*8 a1(10),a2(10),a3(10),a4(10),a5(10),a6(10),b(10),c(10)
      logical*4 m1(10),m2(10),m3(10),lrc1,lrc2
      data m1/1,0,1,0,1,0,1,0,1,0/
      data m2/1,1,0,0,1,1,0,0,1,0/
      data m3/1,1,0,0,1,1,0,0,1,0/,lrc1/.true./,lrc2/.true./
      data a1,a2,a3,a4,a5,a6/60*0.0/
      data b/1,2,3,4,5,6,7,8,9,10/,c/10,9,8,7,6,5,4,3,2,1/

      do 10 i=1,10
        if(m1(i)) then
          if(m2(i)) then
           a1(i) = b(i)
          endif
          if(lrc1) then
            if(m3(i)) then
              a2(i) = c(i)
            endif
          endif
        endif
  10  continue
      write(6,*) a1,a2
      do 20 i=1,10
        if(lrc2) then
          if(m2(i)) then
           a3(i) = b(i)
          endif
          if(lrc1) then
            if(m3(i)) then
              a4(i) = c(i)
            endif
          endif
        endif
  20  continue
      write(6,*) a3,a4
      do 30 i=1,10
        if(m1(i)) then
          if(lrc2) then
            if(m2(i)) then
             a5(i) = b(i)
            endif
            if(lrc1) then
              if(m3(i)) then
                a6(i) = c(i)
              endif
            endif
          endif
        endif
  30  continue
      write(6,*) a5,a6
      stop
      end
