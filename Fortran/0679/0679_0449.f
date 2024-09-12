      data n3/3/,n10/10/
      integer*4  i10(10)/1,2,3,4,5,6,7,8,9,10/
      logical*4  l10s
      logical*4  l10(10),l11(10),l12(10)
      logical*1  l12b(10)
      data  l10/.true.,.false.,.true.,.false.,.true.,.false.,
     1          .true.,.false.,.true.,.false./ ,
     2      l12b/10*.false./,
     3      l11/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./,
     4      l12/4*.true.,4*.false.,2*.true./

      do 100 j=1,n10
        if ( l10(j) ) then
          l10s = l11(i10(j))
        else
          l10s = l12(i10(j))
        endif
        if ( l10s) then
            do 10 i=2,n3
              write(6,*) ' i = ',i
   10       continue
        endif
        l12b(j) =  l10s
  100 continue
      write(6,*) ' l12b = ',l12b
      stop
      end
