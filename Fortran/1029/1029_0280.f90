      integer,dimension(3)::i,j

      i=(/1,0,1/)
      j=(/0,1,0/)
   10 where(i==1) i=1
   20 where(i==1)
   30   where(i>=1) i=1
   40 endwhere
   50 where(i==1)
   60   where(i>=1) i=1
   70 elsewhere
   80   where(i==0) i=0
   90 endwhere
  100 where(i==1)
  110   where(i>=1) i=1
  120 endwhere
  130 where(i==1) i=1

      if (any(i/=(/1,0,1/))) write(6,*) "NG"
      if (any(j/=(/0,1,0/))) write(6,*) "NG"
      print *,'pass'

      end
