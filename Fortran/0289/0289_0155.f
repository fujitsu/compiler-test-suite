      program main
      dimension a(10),b(10),c(10,10)
      character*30 d(10),e(10)
      integer*2 l
      logical no_good/.true./
      data d/10*'                              '/
      data e/'cccccccccc                    ',
     1       ' cccccccccc                   ',
     1       '  cccccccccc                  ',
     1       '   cccccccccc                 ',
     1       '    cccccccccc                ',
     1       '     cccccccccc               ',
     1       '      cccccccccc              ',
     1       '       cccccccccc             ',
     1       '        cccccccccc            ',
     1       '         cccccccccc           '/
      do 100 i=1,10
        a(i)=5
  100 continue
      do 200 i=1,10
        do 300 j=1,10
          a(i)=6
  300   continue
  200 continue
      do 400 i=1,10
        a(i)=7
        b(i)=8
  400 continue
      do 500 i=1,10
        a(i)=9
        do 600 j=1,10
          b(i)=10
  600   continue
  500 continue
      do 700 l=1,10
        a(l)=1
        do 700 i=1,10
          b(l)=1
  700 continue
      do 800 i=1,10
        d(i)(i:i+1)='aaaaaaaaaa'
  800 continue
      do 900 i=1,10
        do 900 j=1,10
          d(i)(i:i+j)='cccccccccc'
  900 continue
      do 1000 i=1,10
        do 1000 j=1,10
          do 1000 k=1,10
            c(i,j)=1
 1000 continue
      do 10 i=1,10
        if (a(i) .ne. 1) then
           no_good=.false.
           write (6,*) '**** ng ==>a ****'
           write (6,*) 'right = 1'
           write (6,*) 'result   ',a
           goto 50
        endif
   10 continue
   50 do 20 i=1,10
        if (b(i) .ne. 1) then
           no_good=.false.
           write (6,*) '**** ng ==>b ****'
           write (6,*) 'right = 1'
           write (6,*) 'result   ',b
           goto 60
        endif
   20 continue
   60 do 30 i=1,10
        do 30 j=1,10
        if (c(i,j) .ne. 1) then
           no_good=.false.
           write (6,*) '**** ng ==>c ****'
           write (6,*) 'right = 1'
           write (6,*) 'result   ',c
           goto 70
           endif
   30 continue
   70 do 40 i=1,10
        if (d(i) .ne. e(i)) then
           no_good=.false.
           write (6,*) '**** ng ==>d ****'
           write (6,*) 'right =  ',e
           write (6,*) 'result   ',d
           goto 80
        endif
   40 continue
   80 if (no_good) then
        write (6,*) '**** ok ****'
      endif
      stop
      end
