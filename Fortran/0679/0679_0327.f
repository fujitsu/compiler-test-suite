      real*4    r10(10),r11(10),r12(10),a(10),b(10),c(10),d(10)
      real*8    d10(10),d11(10),d12(10),ds1,ds2
      logical*4 l11(10),l12(10),l13(10)
      integer*4 i11(10)
      data      a/1,0,1,0,1,0,1,0,1,0/
      data      b/1,1,0,0,1,1,0,0,1,1/
      data      c/1,1,1,1,0,0,0,0,1,1/
      data      d/1,1,1,1,1,1,1,1,0,0/
      data      r10,r11/20*0./,r12/1,2,3,4,5,6,7,8,9,10/
      data      d10,d11/20*0./,d12/2,4,6,8,10,12,14,16,18,20/
      data      rs1/1.5/,rs2/2.0/,ds1/2.5/,ds2/3.0/
      logical*4 l(10)/.true.,.false.,.true.,.false.,.true.,
     *                .false.,.true.,.false.,.true.,.false./
      data      l11/10*.false./

      do 10 i=1,10
        if (l(i)) then
          r10(i) = rs1
          r11(i) = ds1
          d10(i) = - rs2
          d11(i) = - ds2
        else
          r10(i) = - rs1
          r11(i) = - ds1
          d10(i) = rs2
          d11(i) = ds2
        endif
  10  continue
      write(6,*) ' ## r10      r11        d10      d11 ##'
      write(6,991) r10,r11,d10,d11
991   format(f10.5,f10.5,f10.5,f10.5)

      do 20 i=1,10
        if (l(i)) then
          r10(i) = r12(i)
          r11(i) = d12(i)
          d10(i) = - r12(i)
          d11(i) = - d12(i)
        else
          r10(i) = - r12(i)
          r11(i) = - d12(i)
          d10(i) =  r12(i)
          d11(i) =  d12(i)
        endif
  20  continue
      write(6,*) ' ## r10      r11        d10      d11 ##'
      write(6,991) r10,r11,d10,d11

      do 30 i=1,10
        ls1 = a(i) +    b(i)
        ls2 = c(i) +    d(i)
        l12(i) = a(i) .eq. b(i)
        l13(i) = c(i) .eq. d(i)
        if (l(i)) then
          i11(i) = ls2
        else
          l11(i) = l12(i)
          i11(i) = 0
        endif
  30  continue
      write(6,*) l11,i11
      stop
      end
