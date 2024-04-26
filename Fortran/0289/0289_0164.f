      program main
      real       real_a1(10),real_b1(10)
      real       w_real_a1(10),w_real_b1(10)
      real       real_a2(10,10),real_b2(10,10)
      real       w_real_a2(10,10),w_real_b2(10,10)
      pointer (pa1 ,real_a1),(pb1 ,real_b1),
     *        (pa2 ,real_a2),(pb2 ,real_b2)
      data w_real_a1,w_real_a2/110*1.0/
      data w_real_b1,w_real_b2/110*1.0/

      pa1 = loc (w_real_a1(1))
      pb1 = loc (w_real_b1(1))
      pa2 = loc (w_real_a2(1,1))
      pb2 = loc (w_real_b2(1,1))

      i=int(cos(0.0))
   10 i=i+1
      if (i .ge. 3) then
      real_a2(1,1:)=real_a1*3.0
      else
      real_a2(1,:)=real_a1+real_a2(1,:)
      goto 10
      end if
   40 real_a2(1,:)=real_a1+real_a2(2,:)
   30 real_a2(1,:)=real_a1+real_a2(2,:)
      i=i+1
      goto (10,20,30,40,50) i
   50 real_a2(1,1:)=real_a1*3.0
      do 60 k=1,10
        real_a2(k,:)=real_a1*2
   60 continue
   20 continue
      j=int(cos(0.0))
  110 j=j+1
      if (i .ge. 3) then
        do 210 inc1=1,10
          real_b2(1,inc1)=real_b1(inc1)*3.0
  210 continue
      else
      do 220 inc1=1,10
          real_b2(1,inc1)=real_b1(inc1)+real_b2(1,inc1)
  220 continue
      goto 110
      end if
  140 do 230 inc1=1,10
        real_b2(1,inc1)=real_b1(inc1)+real_b2(2,inc1)
  230 continue
  130 do 240 inc1=1,10
        real_b2(1,inc1)=real_b1(inc1)+real_b2(2,inc1)
  240 continue
      j=j+1
      goto (110,120,130,140,150) j
  150 do 250 inc1=1,10
        real_b2(1,inc1)=real_b1(inc1)*3.0
  250 continue
      do 160 k=1,10
        do 260 inc1=1,10
          real_b2(k,inc1)=real_b1(inc1)*2
  260 continue
  160 continue
  120 continue
      do 999 inc1=1,10
        do 999 inc2=1,10
          if (real_a2(inc1,inc2) .ne. real_b2(inc1,inc2)) then
            write(6,*) '*** ng ?? (real) ***'
            write(6,*) 'real_a2(',real_a2,')'
            write(6,*) '"right" ',real_b2
            goto 998
          end if
  999 continue
      write (6,*) '*** ok ***'
  998 continue
      stop
      end
