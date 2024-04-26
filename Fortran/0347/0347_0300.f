      real*4  a(20,20),b(20,20),c(20,20)
      data a,b,c/400*1.,400*2.,400*3./
      data icnt/1/,isw/1/
  10  continue
      nn=20
      call  sub1(a,b,c,nn,icnt)
      call  sub2(a,b,c,nn,icnt)
      if (isw.eq.0) then
        isw=1
        goto 10
      endif
      write(6,*) a
      stop
      end
      subroutine sub1(a,b,c,nn,icnt)
      real*4  a(nn,nn),b(nn,nn),c(nn,nn)
  10  continue
       nx=icnt
       do 20 i=1,20
         a(i,nx)=a(i,1)+b(i,nx)*c(i,nx)
  20   continue
       icnt=icnt+1
       if (icnt.gt.20) goto 30
       goto 10
 30   continue
      return
      end
      subroutine sub2(a,b,c,nn,icnt)
      real*4  a(nn,nn),b(nn,nn),c(nn,nn)
  10   nx=nn/2
       do 20 j=1,10
        do 20 i=1,nn
         b(i,j)=b(i,j)+a(i,nx)-c(i,j)
  20   continue
       icnt=icnt+1
       if (icnt.gt.30) goto 30
       goto 10
 30   continue
      return
      end
