      block data
      real*8 time(4)
      common time
      end
      program main
      real*8 t(10,10,10),v(10,10,10)
      data v/1000*5.d0/
      real*8 time(4)
      common time
      write(6,100)
      call efcmov(t,v,10,10,10)
      call prtefc('move ')
      call efcadd(t,v,10,10,10)
      call prtefc('add  ')
      call efcsub(t,v,10,10,10)
      call prtefc('sub  ')
      call efcmlt(t,v,10,10,10)
      call prtefc('mult ')
      call efcdiv(t,v,10,10,10)
      call prtefc('div  ')
      do 10 k=1,10
       do 10 j=1,10
        do 10 i=1,10
         if (t(i,j,k).ne.5.d0) then
          print *,'*** ng ***',i,j,k,t(i,j,k)
          stop
          endif
   10    continue
      print *,'*** ok ***'
      stop
  100 format(1h ,' cpu-time(msec)'
     1          ,'             total'
     2          ,'      inlined time'
     3          ,'      do over-head'
     4          ,'    call over-head'
     5          ,'      pure execute'
     6          ,'      over-head  %')
      end
      subroutine efcmov(t,v,l,m,n)
      real*8 t(l,m,n),v(l,m,n)
      real*8 time(4)
      common time
      call clock(time(1),2,3)
      do 10 k=1,n
       do 10 j=1,m
        do 10 i=1,l
         call submov(t,v,l,m,n,i,j,k)
   10    continue
      call clock(time(2),2,3)
      do 20 k=1,n
       do 20 j=1,m
        do 20 i=1,l
         t(i,j,k)=v(i,j,k)
   20    continue
      call clock(time(3),2,3)
      do 30 k=1,n
       do 30 j=1,m
        do 30 i=1,l
   30    continue
      call clock(time(4),2,3)
      return
      end
      subroutine efcadd(t,v,l,m,n)
      real*8 t(l,m,n),v(l,m,n)
      real*8 time(4)
      common time
      call clock(time(1),2,3)
      do 10 k=1,n
       do 10 j=1,m
        do 10 i=1,l
         call subadd(t,v,l,m,n,i,j,k)
   10    continue
      call clock(time(2),2,3)
      do 20 k=1,n
       do 20 j=1,m
        do 20 i=1,l
         t(i,j,k)=t(i,j,k)+v(i,j,k)
   20    continue
      call clock(time(3),2,3)
      do 30 k=1,n
       do 30 j=1,m
        do 30 i=1,l
   30    continue
      call clock(time(4),2,3)
      return
      end
      subroutine efcsub(t,v,l,m,n)
      real*8 t(l,m,n),v(l,m,n)
      real*8 time(4)
      common time
      call clock(time(1),2,3)
      do 10 k=1,n
       do 10 j=1,m
        do 10 i=1,l
         call subsub(t,v,l,m,n,i,j,k)
   10    continue
      call clock(time(2),2,3)
      do 20 k=1,n
       do 20 j=1,m
        do 20 i=1,l
         t(i,j,k)=t(i,j,k)-v(i,j,k)
   20    continue
      call clock(time(3),2,3)
      do 30 k=1,n
       do 30 j=1,m
        do 30 i=1,l
   30    continue
      call clock(time(4),2,3)
      return
      end
      subroutine efcmlt(t,v,l,m,n)
      real*8 t(l,m,n),v(l,m,n)
      real*8 time(4)
      common time
      call clock(time(1),2,3)
      do 10 k=1,n
       do 10 j=1,m
        do 10 i=1,l
         call submlt(t,v,l,m,n,i,j,k)
   10    continue
      call clock(time(2),2,3)
      do 20 k=1,n
       do 20 j=1,m
        do 20 i=1,l
         t(i,j,k)=t(i,j,k)*v(i,j,k)
   20    continue
      call clock(time(3),2,3)
      do 30 k=1,n
       do 30 j=1,m
        do 30 i=1,l
   30    continue
      call clock(time(4),2,3)
      return
      end
      subroutine efcdiv(t,v,l,m,n)
      real*8 t(l,m,n),v(l,m,n)
      real*8 time(4)
      common time
      call clock(time(1),2,3)
      do 10 k=1,n
       do 10 j=1,m
        do 10 i=1,l
         call subdiv(t,v,l,m,n,i,j,k)
   10    continue
      call clock(time(2),2,3)
      do 20 k=1,n
       do 20 j=1,m
        do 20 i=1,l
         t(i,j,k)=t(i,j,k)/v(i,j,k)
   20    continue
      call clock(time(3),2,3)
      do 30 k=1,n
       do 30 j=1,m
        do 30 i=1,l
   30    continue
      call clock(time(4),2,3)
      return
      end
      subroutine submov(t,v,l,m,n,i,j,k)
      real*8 t(l,m,n),v(l,m,n)
      t(i,j,k)=v(i,j,k)
      return
      end
      subroutine subadd(t,v,l,m,n,i,j,k)
      real*8 t(l,m,n),v(l,m,n)
      t(i,j,k)=t(i,j,k)+v(i,j,k)
      return
      end
      subroutine subsub(t,v,l,m,n,i,j,k)
      real*8 t(l,m,n),v(l,m,n)
      t(i,j,k)=t(i,j,k)-v(i,j,k)
      return
      end
      subroutine submlt(t,v,l,m,n,i,j,k)
      real*8 t(l,m,n),v(l,m,n)
      t(i,j,k)=t(i,j,k)*v(i,j,k)
      return
      end
      subroutine subdiv(t,v,l,m,n,i,j,k)
      real*8 t(l,m,n),v(l,m,n)
      t(i,j,k)=t(i,j,k)/v(i,j,k)
      return
      end
      subroutine prtefc(oprtr)
      character*5 oprtr
      real*8 time(4),total,call,dost,calovh,purcur,parovh
      common time
      total=(time(2)-time(1))/1.d3
      call =(time(3)-time(2))/1.d3
      dost =(time(4)-time(3))/1.d3
      calovh =total-call
      purcur =total-dost
      parovh =((total-purcur)/1d2)*1d2
      write(6,100) oprtr,total,call,dost,calovh,purcur,parovh
  100 format(1h ,5x,a5,5x,5(3x,f15.3),12x,f6.2)
      return
      end
      subroutine clock(a,i,j)
      real*8 a
      a=1.d3
      end
