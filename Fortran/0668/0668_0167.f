      program main
      integer a(2000),b(2000),c(0:9)
      data a,b/4000*1/,c/0,1,2,3,4,5,6,7,8,9/
      do 10 i=1,2000
        b(i) = mod(i,3)
   10 continue
      do 20 i=1,1991,10
        a(i+0) = ibset(ibclr(i+9,b(i)-b(i)),b(i)+5)
        a(i+1) = ibset(ibclr(i+8,b(i)-b(i)),b(i)+6)
        a(i+2) = ibset(ibclr(i+7,b(i)-b(i)),b(i)+7)
        a(i+3) = ibset(ibclr(i+6,b(i)-b(i)),b(i)+8)
        a(i+4) = ibset(ibclr(i+5,b(i)-b(i)),b(i)+9)
        a(i+5) = ibset(ibclr(i+4,b(i)-b(i)),b(i)+0)
        a(i+6) = ibset(ibclr(i+3,b(i)-b(i)),b(i)+1)
        a(i+7) = ibset(ibclr(i+2,b(i)-b(i)),b(i)+2)
        a(i+8) = ibset(ibclr(i+1,b(i)-b(i)),b(i)+3)
        a(i+9) = ibset(ibclr(i+0,b(i)-b(i)),b(i)+4)
        j = 0
        if (btest(a(i+0),b(i)+9+c(0))) then
         if (btest(a(i+1),b(i)+8+c(1))) then
          if (btest(a(i+2),b(i)+7+c(2))) then
           if (btest(a(i+3),b(i)+6+c(3))) then
            if (btest(a(i+4),b(i)+5+c(4))) then
             if (btest(a(i+5),b(i)+4+c(5))) then
              if (btest(a(i+6),b(i)+3+c(6))) then
               if (btest(a(i+7),b(i)+2+c(7))) then
                if (btest(a(i+8),b(i)+1+c(8))) then
                 if (btest(a(i+9),b(i)+0+c(9))) then
                   j = 0
                 endif
                 j = 1
                endif
                j = 2
               endif
               j = 3
              endif
              j = 4
             endif
             j = 5
            endif
            j = 6
           endif
           j = 7
          endif
          j = 8
         endif
         j = 9
        endif
        a(i+0) = ibclr(a(i)+c(j),mod(ibclr(i+9,10-b(i)),5))
        a(i+1) = ibclr(a(i)+c(j),mod(ibclr(i+8,10-b(i)),4))
        a(i+2) = ibclr(a(i)+c(j),mod(ibclr(i+7,10-b(i)),3))
        a(i+3) = ibclr(a(i)+c(j),mod(ibclr(i+6,10-b(i)),2))
        a(i+4) = ibclr(a(i)+c(j),mod(ibclr(i+5,10-b(i)),1))
        a(i+5) = ibclr(a(i)+c(j),mod(ibclr(i+4,10-b(i)),9))
        a(i+6) = ibclr(a(i)+c(j),mod(ibclr(i+3,10-b(i)),8))
        a(i+7) = ibclr(a(i)+c(j),mod(ibclr(i+2,10-b(i)),7))
        a(i+8) = ibclr(a(i)+c(j),mod(ibclr(i+1,10-b(i)),6))
        a(i+9) = ibclr(a(i)+c(j),mod(ibclr(i+0,10-b(i)),5))
   20 continue
      write(6,*)
      write(6,*) ' ### ### '
      write(6,*)
      write(6,1) j
      write(6,*)
      write(6,1) (a(i),i=1,2000,5)
    1 format(10i8)
      stop
      end
