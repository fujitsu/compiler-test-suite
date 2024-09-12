      program main
      integer a(10),b(10),c(10),g(10)
      integer d(10),e(10),f(10)
      logical l(10)
      data    a/1,2,3,4,5,6,7,8,9,10/
      data    d/0,1,1,2,2,2,2,3,3,3/,e/10*0/,f/10*0/
      data    g/0,1,0,2,0,1,0,3,0,1/
      data    l/10*.false./
      do 10 i=1,10
        b(ibset(a(i),g(i))) = -i
        c(ibclr(i,a(i)+20)) = i
        if (btest(b(ibset(a(i),g(i))),d(ibclr(i,a(i)+20)))) then
          e(ibset(a(i),g(i))) = ibclr(i,a(i)+20)
          if (btest(c(ibclr(i,a(i)+20)),0)) then
            f(i) = 0
          else
            if (btest(c(ibclr(i,a(i)+20)),1)) then
              f(i) = 1
            else
              if (btest(c(ibclr(i,a(i)+20)),2)) then
                f(i) = 2
              else
                if (btest(c(ibclr(i,a(i)+20)),3)) then
                  f(i) = 3
                endif
              endif
            endif
          endif
        endif
   10 continue
      write(6,*) ' ###   ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,1) b
      write(6,*)
      write(6,1) c
      write(6,*)
      write(6,1) e
      write(6,*)
      write(6,1) f
      write(6,*)
      do 20 i=1,10
        if (e(ibset(a(i),g(i))).eq.f(ibclr(i,a(i)+20))) then
          b(ibset(a(i),g(i))) = b(ibset(a(i),g(i))) + 1
        else
          c(ibclr(i,a(i)+20)) = c(ibclr(i,a(i)+20))+ 1
        endif
   20 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,1) b
      write(6,*)
      write(6,1) c
      write(6,*)
      do 30 i=1,10
        a(i) = ibset(-b(i),1)
        if (a(i).eq.(-b(i))) then
          l(i) = btest(b(i),c(i))
        else
          l(i) = btest(a(i),c(i))
        endif
   30 continue
      write(6,*) ' ## test 3 ## '
      write(6,*)
      write(6,1) a
      write(6,*)
      write(6,1) b
      write(6,*)
      write(6,2) l
      write(6,*)
    1 format(10i5)
    2 format(10l5)
      stop
      end
