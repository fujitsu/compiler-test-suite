      integer i, j, kk
      kk=0
      do 500 i=1,10
      if (i.le.3)  kk = kk+999
      kk=kk-2
  500 continue

      if (kk.eq.2977) then
         write(6,*) " ## OK ## "
      else
         write(6,*) " ## NG ## ",kk
      endif
      end
