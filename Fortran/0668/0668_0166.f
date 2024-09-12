      program main
      integer i4a(10)/10*0/,i4b(10)/1,2,3,4,5,6,7,8,9,10/
      integer i4c(10)/10*0/,i4d(10)/10*0/,i4e/6/
      integer list(10)/10*2/
      real*4  r4a(10)/10*0/,r4b(10)/5,6,7,8,9,10,1,2,3,4/
      real*8  r8a(10)/10*.0/
      logical l4b(10)/10*.true./
      logical msk(10)/.true.,.true.,.false.,.true.,.false.,.false.,
     +               .false.,.true.,.false.,.true./
      do 10 i=1,10
        i4a(2) = i4b(i)
        r4a(4) = r4b(5)
        if (r4a(4).le.10) then
          i4a(4) = i + i4b(i)
        else
          if (i.le.5) then
             r4a(10) = real(i4b(i))
          endif
        endif
   10 continue
      write(6,*) ' ### ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,*) i4a
      write(6,*) r4a
      write(6,*)
      do 20 i=1,10
        if (msk(i)) then
          r8a(2) = i - 20
        else
          r8a(4) = i4b(i)
        endif
        r8a(10) = i
        if (i.gt.10) goto 20
        if (i4b(i).le.i) then
          r8a(8) =  (i4b(i) + i ) * 10 + r8a(1)
        endif
   20 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,*) r8a
      write(6,*)
      do 30 i=1,10
        if (msk(i)) then
          l4b(1) = i.le.5
          if (mod(i,3).eq.1) then
            l4b(2) = (i.ne.i4b(i)).or.l4b(3)
            if (l4b(4)) then
              l4b(5) = msk(i)
            endif
          endif
        else
          l4b(6) = l4b(7).neqv.l4b(8).or.msk(i)
        endif
        l4b(9) = msk(i).and.l4b(10)
   30 continue
      write(6,*) ' ## test 3 ## '
      write(6,*)
      write(6,*) l4b
      write(6,*)
      do 40 i=1,10,1
        j = i
        if (mod(i4b(11-i),j)) 41,42,42
   41     i4c(i4e-5) = iand(i,j)
          goto 43
   42     i4d(list(2)) = ior(j,i)
   43   continue
        i4c(i4e) = i
        if (i4b(i).eq.0) then
          i4c(i4e-4) = mod(i,2)
        else
          i4c(i4e-1) = j
        endif
   40 continue
      write(6,*) ' ## test 4 ## '
      write(6,*)
      write(6,*) i4c
      write(6,*)
      write(6,*) i4d
      write(6,*)
      stop
      end
