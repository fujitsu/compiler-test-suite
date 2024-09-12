      program main
      call sub211
      call sub212
      end
      subroutine sub211
      integer*4 ia(10,10),ib(10,10),ic(10,10)
      data ia/100*0/,ib/100*2/,ic/100*3/
      do 3 i=1,10
        j=1
        idx=0
    1     ia(i,j)=ia(i,j)+ib(i,j)
    2     j=j+1
          ia(i,j)=ia(i,j)+ic(i,j)
          if(j.ge.8 .and. idx.eq.0) goto 1
            idx=1
            ia(i,j)=ia(i,j)+ib(i,j)
            j=j+1
            if(j.le.9) goto 2
    3 continue
      write(6,*) ' ia(1,1)=',ia(1,1)
      do 7 i=1,10
        j=1
        goto 5
    4   do 6 j=1,10
          goto 7
    5     ia(i,j)=ia(i,j)+ib(i,j)
    6   continue
    7 continue
      write(6,*) ' ia(1,1)=',ia(1,1)
      return
      end
      subroutine sub212
      character*26 char/26habcdefghijklmnopqrstuvwxyz/
      do 1 i=1,26
    1   if(char(i:i).eq.1hm) idx=i
      write(6,*) ' m index=',idx
      return
      end
