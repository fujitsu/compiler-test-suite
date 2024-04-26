      real*4  a1(20,20),a2(20,20),b(20,20),c(20,20)
      data   a1,a2,b,c/400*1.,400*1.,400*2.,400*3./,nn/20/
      do 5 i=1,20
       do 5 j=1,20
         a1(i,j)=float(j)
 5    continue
      do 10 i=1,nn
       do 10 j=1,nn
         a1(j,i)=b(j,i)+c(j,i)
 10   continue
      do 6 i=1,20
       do 6 j=1,20
         a2(i,j)=float(j)
 6    continue
      kmod=mod(nn,2)
      do 20 i=1,nn-1,2
       do 20 j=1,nn
         a2(j,i)=b(j,i)+c(j,i)
         a2(j,i+1)=b(j,i+1)+c(j,i+1)
 20   continue
      if (kmod.eq.1) then
        do 30 j=1,nn
          a2(j,nn)=b(j,nn)+c(j,nn)
 30     continue
      endif
      iflg=0
      do 50 i=1,20
       do 50 j=1,20
         if (a1(i,j).ne.a2(i,j)) then
           write(6,*) ' i=',i,' j=',j
           iflg=1
         endif
 50   continue
      if (iflg.eq.0) then
        write(6,*) ' ** ok ** '
      else
        write(6,*) ' ** ng ** '
      endif
      stop
      end
