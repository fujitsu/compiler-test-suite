      integer i, j, kk
      kk=0
      do 500 i=1,10
      if (i.le.3) goto 510
  520 kk=kk-2
  500 continue

      goto 599
  510 kk=kk+999

      goto 520
  599 continue

      if (kk.eq.2977) then
         write(6,*) " ## OK ## "
      else
         write(6,*) " ## NG ## ",kk
      endif

      stop
      end
