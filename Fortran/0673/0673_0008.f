      integer*4 zhlr,zhur,zhent,fph,fsh,dzh,dez,dzpl,zhi,khtch
      dimension dzh(2,2),zhi(2,2),khtch(2,2),zhlr(5)
      namelist /card1/zhlr,zhur,zhent,fph,fsh,dzh,dez,dzpl,zhi,khtch
      write(6,130)
  130 format('  ** test start **')
      read(5,card1)
      do 10 i=1,5
   10 if(zhlr(i).ne.1) goto 200
      if(zhur.ne.2) goto 200
      if(zhent.ne.3) goto 200
      if(fph.ne.4) goto 200
      if(fsh.ne.5) goto 200
      do 20 j=1,2
      do 20 i=1,2
   20 if(dzh(i,j).ne.6) goto 200
      if(dez.ne.7) goto 200
      if(dzpl.ne.8) goto 200
      do 30 j=1,2
      do 30 i=1,2
   30 if(zhi(i,j).ne.9) goto 200
      do 40 j=1,2
      do 40 i=1,2
   40 if(khtch(i,j).ne.10) goto 200
      write(6,100)
  100 format(' ** test ok **')
      goto 777
  200 continue
      write(6,110)
  110 format('  *** test ng ***')
  777 continue
      stop
      end
