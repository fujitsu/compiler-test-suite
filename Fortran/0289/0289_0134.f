      program main
      integer*4 daymt(12),dayt(12,7,6),column,row
      data daymt/31,28,31,30,31,30,31,31,30,31,30,31/
      do 10 i=1,12
      do 10 j=1,7
      do 10 k=1,6
           dayt(i,j,k)=0
   10 continue
      row=1
      do 20 i=1,12
        column=1
        do 21 j=1,daymt(i)
           if(row.eq.8) then
             row=1
             column=column+1
           endif
           dayt(i,row,column)=j
           row=row+1
   21   continue
   20 continue
      imonth=4
      iday=18
      do 30 i=1,7
        if(dayt(imonth,i,1).ne.0) goto 31
   30 continue
   31 row=mod((iday+i-1),7)
      if(row.eq.3) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
      endif
      if(row.eq.1) then
         write(6,*) '**** sunday ***'
      else if(row.eq.2) then
         write(6,*) '**** monday ***'
      else if(row.eq.3) then
         write(6,*) '**** tuesday ***'
      else if(row.eq.4) then
         write(6,*) '**** wednesday ***'
      else if(row.eq.5) then
         write(6,*) '**** thursday ***'
      else if(row.eq.6) then
         write(6,*) '**** friday ***'
      else if(row.eq.0) then
         write(6,*) '**** saturday ***'
      endif
      stop
      end
