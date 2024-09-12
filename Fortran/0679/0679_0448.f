      program main
      data n3/3/,n10/10/
      complex*16 cd10(10),cd10s
      integer*4  i10(10)/1,2,3,4,5,6,7,8,9,10/
      logical*4  l10s,l11s,l12s
      logical*4  l10(10),l11(10)
      logical*1  l12b(10)
      real       r10(10),r11(10)
      data       r10/10*0/,r11/10*1/
      data  cd10/(1,1),(1,0),(2,1),(1,1),(0,3),(4,5),2*(1,1),2*(0,1)/,
     1      cd10s/(1,1)/ ,i11s/7/,
     2      l10/.true.,.false.,.true.,.false.,.true.,.false.,
     3          .true.,.false.,.true.,.false./ ,
     4      l12s/.true./ ,l12b/10*.false./,
     5      l11/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./

      do 100 j=1,n10
        r10(j) = r10(j) + sqrt(r11(j))
        l10s = cd10(j) .eq. cd10s
        if ( l10s .or. j.gt. i11s ) then
          l11s = l10(i10(j)).and.l12s
        else
          l11s = l12s.and.l11(i10(j))
        endif
        if ( l11s) then
            do 10 i=2,n3
              write(6,*) ' i = ',i
   10       continue
        endif
        l12b(j) =  l11s
  100 continue
      write(6,*) ' l12b = ',l12b,' j = ',j
      stop
      end
