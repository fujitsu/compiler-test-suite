      program snqih01
      character*1 c1
      logical*4   l1
*
      c1='a'
*
      l1=(c1.ne.'a')
      if (l1) goto 20
   10 write (6,*) '**** ok ****'
      goto 30
   20 write (6,*) '**** ng ****'
   30 stop
      end
