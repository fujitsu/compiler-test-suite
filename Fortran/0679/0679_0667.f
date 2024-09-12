      program main
      dimension a(20),b(20)
      data b/121,426,345,4536,7453,567,8,35,645,645,
     1       125,45,246,78,90623,676,875,3565,674,3456/

      work1=99999
      do 20 i=1,20
      a(i)=b(i)
      if(work1-a(i)) 10,10,20
   10 work1=a(i)
   20 continue
      write(6,*)a,b,work1

      work1=0
      do 40 i=1,20
      a(i)=b(i)
      if(a(i)-work1) 30,40,40
   30 work1=a(i)
   40 continue
      write(6,*)a,b,work1

      work1=0
      do 50 i=1,20
      a(i)=b(i)
      if(a(i).gt.work1) then
      work1=a(i)
      endif
   50 continue
      write(6,*)a,b,work1

      work1=999999
      do 60 i=1,20
      a(i)=b(i)
      if(a(i).le.work1) then
      work1=a(i)
      endif
   60 continue
      write(6,*)a,b,work1
      stop
      end
