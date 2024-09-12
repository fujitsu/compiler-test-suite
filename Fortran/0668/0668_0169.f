      program main
      integer a(10),b(10),c(10),d
      equivalence(a(1),b(1))
      data a/1,2,3,4,5,6,7,8,9,10/,d/0/
      do 10 i=1,10
        c(1) = ibset(ibclr(a(i),1),10)+ibclr(ibset(b(i),5),3)
        c(2) = ibset(ibclr(a(i),2),9)+ibclr(ibset(b(i),6),4)
        c(3) = ibset(ibclr(a(i),3),8)+ibclr(ibset(b(i),7),5)
        c(4) = ibset(ibclr(a(i),4),7)+ibclr(ibset(b(i),8),6)
        c(5) = ibset(ibclr(a(i),5),6)+ibclr(ibset(b(i),9),7)
        c(6) = ibset(ibclr(a(i),6),5)+ibclr(ibset(b(i),10),8)
        c(7) = ibset(ibclr(a(i),7),4)+ibclr(ibset(b(i),1),9)
        c(8) = ibset(ibclr(a(i),8),3)+ibclr(ibset(b(i),2),10)
        c(9) = ibset(ibclr(a(i),9),2)+ibclr(ibset(b(i),3),1)
        c(10) = ibset(ibclr(a(i),10),1)+ibclr(ibset(b(i),4),2)
        if (btest(ibset(b(i)+a(i),0),8)) then
         if (btest(ibset(b(i)+a(i),1),7)) then
          if (btest(ibset(b(i)+a(i),2),6)) then
           if (btest(ibset(b(i)+a(i),3),5)) then
            if (btest(ibset(b(i)+a(i),4),4)) then
             if (btest(ibset(b(i)+a(i),5),3)) then
              if (btest(ibset(b(i)+a(i),6),2)) then
               if (btest(ibset(b(i)+a(i),7),1)) then
                if (btest(ibset(b(i)+a(i),8),0)) then
                 if (btest(ibset(b(i)+a(i),9),9)) then
                   d = ibclr(a(i)+b(i)*i,9)
                 endif
                endif
               endif
              endif
             endif
            endif
           endif
          endif
         endif
        endif
   10 continue
      write(6,*) ' ### ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,1) c
      write(6,*)
      write(6,1) d
      write(6,*)
      do 20 i=1,10
        a(i) = ibset(ibclr(c(i),1),10)+ibclr(ibset(i,5),3)
        if (btest(ibset(b(i)+i,0),8)) then
          d = ibset(a(i)+b(i)*i,0)
        endif
   20 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,1) a
      write(6,*)
      write(6,1) d
      write(6,*)
    1 format(10i6)
      stop
      end
