      program main
      dimension a(10),b(10),c(10,10),f(10,10)
      character*30 d(10),e(10)
      integer*2 l
      logical no_good/.true./
      data c/100*0.0/
      data d/10*'                              '/
      data e/'ccccccccccc                   ',
     1       'cccccccccccc                  ',
     1       'ccccccccccccc                 ',
     1       'cccccccccccccc                ',
     1       'ccccccccccccccc               ',
     1       5*'aa                            '/
      data f/1.0,9*0.0,1.0,9*0.0,1.0,9*0.0,1.0,9*0.0,1.0,9*0.0,
     1       1.0,9*0.0,1.0,9*0.0,1.0,9*0.0,1.0,9*0.0,1.0,9*0.0/
      do 100 i=1,10
      do 100 j=1,10
      do 100 k=1,10
        a(i)=5
  100 continue
      do 200 i=1,10
        do 300 j=1,10
          a(i)=6
          do 300 k=1,10
            b(i)=6
  300   continue
  200 continue
      do 400 i=1,10
      do 400 j=1,10
        a(i)=7
        b(i)=8
  400 continue
      do 700 l=1,10
        a(l)=1
        do 700 i=1,10
          c(1,l)=1
  700 continue
      k=1
      do 800 i=1,10
        d(i)(k:k+1)='aaaaaaaaaa'
  800 continue
      do 900 i=1,10
        do 900 j=1,5
          d(j)(i:i+j)='cccccccccc'
  900 continue
      do 10 i=1,10
        if (a(i) .ne. 1) then
           no_good=.false.
           write (6,*) '**** ng ==>a ****'
           write (6,*) 'right = 1'
           write (6,*) 'result   ',a
           goto 20
        endif
   10 continue
   20 do 30 i=1,10
        if (b(i) .ne. 8) then
           no_good=.false.
           write (6,*) '**** ng ==>b ****'
           write (6,*) 'right = 8'
           write (6,*) 'result   ',b
           goto 40
        endif
   30 continue
   40 do 50 i=1,10
        do 50 j=1,10
        if (c(i,j) .ne. f(i,j)) then
           no_good=.false.
           write (6,*) '**** ng ==>c ****'
           write (6,*) 'right = 1'
           write (6,*) 'result   ',c
           goto 60
        endif
   50 continue
   60 do 70 i=1,10
        if (d(i) .ne. e(i)) then
           no_good=.false.
           write (6,*) '**** ng ==>d ****'
           write (6,*) 'right =  ',e
           write (6,*) 'result   ',d
           goto 80
        endif
   70 continue
   80 if (no_good) then
        write (6,*) '**** ok ****'
      endif
      stop
      end
