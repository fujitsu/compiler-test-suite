      integer,dimension(3)::i,j

      i=(/1,0,1/)
      j=(/0,1,0/)
      where(i==1) i=1
      where(i==1)
      endwhere
      where(i==1)
      elsewhere
      endwhere
      where(i==1)
      endwhere
      where(i==1) i=1

      if (any(i/=(/1,0,1/))) write(6,*) "NG"
      if (any(j/=(/0,1,0/))) write(6,*) "NG"
      print *,'pass'

      end
