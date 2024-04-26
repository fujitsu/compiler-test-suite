      program main
      real*8 t(10,10,10),v(10,10,10)
      data v/1000*5.d0/
c
      call efcmov(t,v)
c
      do 10 k=1,10
       do 10 j=1,10
        do 10 i=1,10
         if (t(i,j,k).ne.5.d0) then
          print *,'*** ng ***',i,j,k,t(i,j,k)
          stop
          endif
   10    continue
      print *,'ok'
      stop
      end
c
      subroutine efcmov(t,v)
      real*8 t(10,10,10),v(10,10,10)
      do 10 k=1,10
       do 10 j=1,10
        do 10 i=1,10
         call submov(t(i,j,k),v(i,j,k))
   10    continue
      return
      end
c
      subroutine submov(x,y)
      real*8 x,y
      x=y
      return
      end
