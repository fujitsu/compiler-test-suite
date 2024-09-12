      logical*4 l10(10),l11(10),l12(10),l13(10),l14(10),l15(10)
      logical*4 l16(10),l17(10),l18(10)
      logical*4 l11s,l12s,l13s,l14s,l15s,l16s,l17s,l18s
      data      l10/.true.,.false.,.true.,.false.,.true.,
     +              .false.,.true.,.false.,.true.,.false./
      data      l11/.true.,5*.false.,.true.,.false.,.true.,.false./
      data      l12/.false.,2*.true.,3*.false.,.true.,
     +              .false.,.true.,.false./
      data      l13/.false.,2*.true.,3*.false.,.true.,3*.false./
      data      l14/.false.,.true.,6*.false.,.true.,.false./
      data      l15,l16,l17,l18/40*.false./
      logical*4 l20(10),l21(10),l22(10),l23(10),l24(10)
      logical*4 l25(10),l26(10),l27(10),l28(10),l29(10)
      logical*4 l20s,l21s,l22s,l23s,l24s,l25s
      data  l20/.true.,.false.,.true.,.false.,.true.,
     +          2*.false.,.true.,.false.,.true./
      data  l21/.true.,.false.,.true.,.false.,.true.,
     +          2*.false.,.true.,.false.,.true./
      data  l22/.true.,6*.false.,3*.true./
      data  l23/.true.,6*.false.,3*.true./
      data  l24/.true.,5*.false.,2*.true.,.false.,.true./
      data  l25/.true.,.false.,.true.,4*.false.,3*.true./
      data  l26,l27,l28,l29/40*.false./

      do 10 i=1,10
        if ( l10(i)) then
          l11s = l11(i)
          l12s = l12(i)
          l13s = l13(i).eqv.l10(i)
          l14s = l14(i).eqv.l10(i)
          l15s   = l11s .or. l12s
          if (l15s) l15(i) = l15s
          l16s   = l11s .and. l13s
          if (l16s) l16(i) = l16s
          l17s   = l13s .neqv. l12s
          if (l17s) l17(i) = l17s
          l18s   = l13s .eqv. l14s
          if (l18s) l18(i) = l18s
        endif
  10  continue
      write(6,*) ' l15 = ',l15
      write(6,*) ' l16 = ',l16
      write(6,*) ' l17 = ',l17
      write(6,*) ' l18 = ',l18

      do 20 i=1,10
        if ( l10(i)) then
          l20s = l20(i).eqv.l10(i)
          l21s = l21(i).eqv.l10(i)
          l22s = l22(i).eqv.l10(i)
          l23s = l23(i).eqv.l10(i)
          l24s = l24(i).neqv.l10(i)
          l25s = l25(i).neqv.l10(i)
          l20s = l21s .or. l22s
          l21s = l21s .and. l24s
          l22s = l24s .neqv. l22s
          l23s = l24s .eqv. l25s
          l26(i) = l20s
          l27(i) = l21s
          l28(i) = l22s
          l29(i) = l23s
        endif
  20  continue
      write(6,*) ' l26 = ',l26
      write(6,*) ' l27 = ',l27
      write(6,*) ' l28 = ',l28
      write(6,*) ' l29 = ',l29
      stop
      end
