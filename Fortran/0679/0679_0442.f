      program main
      dimension a(10),b(10),c(10)
      logical*4 l(10)
      data b/10*1.0/,c/10*0./
      data l/5*.true.,5*.false./

      s1 = 3.0
      do 10 i=1,10
        a(i) = s1
        s1 = b(i) + sqrt(c(i))
  10  continue
      write(6,*) a
      s2 = 2.0
      do 20 i=1,10
        a(i) = s2
        s2 = b(i) + sqrt(c(i))
  20  continue
      write(6,*) a,s2
      do 30 i=1,10
        s3 = a(i)
  30  continue
      write(6,*) a
      do 40 i=1,10
        s4 = a(i)
  40  continue
      write(6,*) s4
      s5 = 5.0
      do 50 i=1,10
        if (l(i)) then
          a(i) = s5
          s5 = b(i) + sqrt(c(i))
        endif
  50  continue
      write(6,*) a
      s6 = 6.0
      do 60 i=1,10
        if (l(i)) then
          a(i) = s6
          s6 = b(i)+ sqrt(c(i))
        endif
  60  continue
      write(6,*) a,s6
      do 70 i=1,10
        if (l(i)) then
          s7 = a(i)
        endif
  70  continue
      write(6,*) a
      do 80 i=1,10
        if (l(i)) then
          s8 = a(i)
        endif
  80  continue
      write(6,*) s8
      stop
      end
