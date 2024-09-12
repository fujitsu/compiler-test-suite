      program main
      logical*4  l4c(10)
      dimension  r4a(10),r4b(10)
      data r4b / 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0 /
      i=1
   10 l4c(i)   = .true.
      l4c(i+1) = .false.
      i=i+1
      if( i.le.9 ) goto 10
      do 20 i=1,10
          if( l4c(i) ) then
              r4a(i) = r4b(i)
          else
              r4a(i) = 0.0
          endif
   20 continue
      i=1
   30 if( l4c(i) ) then
          if( r4a(i).ne. r4b(i) ) write(6,100)
      else
          if( r4a(i).ne. 0.0  ) write(6,110)
      endif
      r4a(i) = 0.0
      i=i+1
      if( i.le.10 ) goto 30
      do 40 i=1,10
          if( .not.l4c(i) ) then
              r4a(i) = r4b(i)
          else
              r4a(i) = 0.0
          endif
   40 continue
      i=1
   50 if( .not.l4c(i) ) then
          if( r4a(i).ne. r4b(i) ) write(6,120)
      else
          if( r4a(i).ne. 0.0  ) write(6,130)
      endif
      i=i+1
      if( i.le.10 ) goto 50
      write(6,9999)
      stop
  100 format(1h ,'**** ng **** normal case .true.')
  110 format(1h ,'**** ng **** normal case .false.')
  120 format(1h ,'**** ng **** not case .true.)')
  130 format(1h ,'**** ng **** not case .false.)')
 9999 format(1h ,'>>>> ok <<<<')
      end
