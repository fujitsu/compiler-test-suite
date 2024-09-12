      logical*4  la(10),lb(10),lc(10),ld(10)
      data la/10*.true./,lb/10*.false./,lc/10*.true./
      data ld/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./

      do 10 i=1,10
        la(i) = .false.
        lb(i) = .not.la(i)
        if ( lb(i) ) then
           lc(i) = .not.ld(i)
        endif
 10   continue
      write(6,*) la
      write(6,*) lb
      write(6,*) lc
      stop
      end
