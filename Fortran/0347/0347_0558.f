      program main
      real*4  a(10)
      integer*4  imin,imax,vmin,vmax
      character*4  indata
      data  a/1.d0,2.d0,55.d0,5.d0,12.d0,55.d0,-3.d0,2.d0,-44.d0,7.d0/
      data  imin/1/,imax/1/

      read(5,777) indata
  777 format(a4)

      if((indata.eq.' max').or.(indata.eq.'max ')) then
        do 11 i=1,10
          if(a(i).gt.a(imax)) then
            imax=i
          endif
   11   continue
        do 111 i=1,10
          vmax=max(vmax,a(i))
  111   continue
      elseif((indata.eq.' min').or.(indata.eq.'min ')) then
        do 22 i=1,10
          if(a(i).lt.a(imin)) then
            imin=i
          endif
   22   continue
        do 222 i=1,10
          vmin=min(vmin,a(i))
  222   continue
      endif
      if((indata.eq.' max').or.(indata.eq.'max ')) then
        write(6,*) 'max data....   ',vmax
        write(6,*) 'max index...   ',imax
      elseif((indata.eq.' min').or.(indata.eq.'min ')) then
        write(6,*) 'min data....   ',vmin
        write(6,*) 'min index...   ',imin
      endif
      print *,'ok' 
      stop
      end
