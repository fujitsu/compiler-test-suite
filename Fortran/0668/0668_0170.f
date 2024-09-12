      program main
      integer a(1000),n,m,l,b(1000)
      integer rc
      logical l1(1000),l2
      data a/1000*1/,b/1000*0/,l,m,n/1,1000,0/,rc/15/
      data l1/1000*.true./,l2/.false./
      j = 0
      do 10 i=l,m,l
        a(i)=i
        if (btest(a(i)*i,0).and.btest(i*a(i),n)) then
         if (btest(rc,ibset(b(i),n)).or.btest(rc,ibset(b(i),n))) then
          if (.not.(btest(ibclr(i,l),n+1).or.btest(ibclr(i,1),l))) then
            l1(i)=btest(a(i),0).and.btest(a(i),n)
            if ((l1(i).or.l2).and.btest(a(i)*i,0)) then
              l1(i)=.not.l2.or.(btest(i,l).or.btest(m,n))
              if (l1(i).and.btest(i,l)) then
                l1(i)=btest(ibclr(i,0),n)
                j = j + 1
              endif
            else
              l1(i) = .false.
            endif
           else
             l1(i) = .not.l1(i)
           endif
          endif
         endif
         if (j.eq.30) then
           j = 0
         endif
   10 continue
      write(6,*)
      write(6,*) ' ### ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,*) (l1(i),i=1,1000,2)
      write(6,*)
      j = 100
      do 20 i=l,m,l
        l1(i) = .false.
        if (btest(i,n).or.btest(i,0)) then
          j = 0
          if (btest(i,l).or.btest(i,1)) then
            j = 1
            if (btest(i,2).or.btest(i,l*2)) then
              j = 2
              l1(i) = btest(i,2)
            else
              j = 3
              l1(i) = btest(i,3)
            endif
          else
            j = 4
            l1(i) = btest(i,4)
          endif
        else
          j = 5
          l1(i) = btest(i,5)
        endif
   20 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,*) j
      write(6,*)
      write(6,*) (l1(i),i=1,1000,2)
      write(6,*)
      stop
      end
