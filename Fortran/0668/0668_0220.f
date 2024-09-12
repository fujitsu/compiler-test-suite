      program main
      call sub1007
      call sub2301
      call sub2307
      call sub2312
      call sub2313
      call sub2314
      end
      subroutine sub1007
      integer*4 ia(10),ib(10),ic(10)
      data ia/10*1/,ib/10*1/,ic/10*1/
      do 1 i=2,10
    1   ia(i)=ia(i-1)*ib(i)+ic(i)
      write(6,*) ' ia= ' , ia(10)
      return
      end
      subroutine sub2313
      integer*4 ia(10),ib(10)
      data ia/10*1/,ib/10*2/
      do 1 i=2,10
    1   ia(i)=ia(i-1)*ib(i)
      write(6,*) ' ia= ' , ia(10)
      return
      end
      subroutine sub2314
      real*4 a(20),b(20)
      data a,b/20*1.,20*2./
      do 10 i=3,20
        s=a(i)+b(i)
        a(i)=a(i-2)*s
  10  continue
      write(6,*) ' a= ',a
      return
      end
      subroutine sub2301
      real*4 a(10)
      data a/10*1./
      do 10 i=1,10
        if(i.ge.5) goto 10
         s=a(i)
  10  continue
      write(6,*) ' s= ',s
      return
      end
      subroutine sub2307
      common /data/a(10)
      real*4 b(20)
      do 10 i=1,10
        call inti
        b(i)=a(i)
  10  continue
      write(6,*) ' b= ',a
      return
      end
      subroutine inti
      common /data/a(10)
      do 10 i=1,10
        a(i)=i
  10  continue
      return
      end
      subroutine sub2312
      real*4 a(20)/20*1./
      equivalence (e1,e2)
      do 10 i=3,20
        e1=a(i)
  10  continue
      write(6,*) 'e2= ',e2
      return
      end
