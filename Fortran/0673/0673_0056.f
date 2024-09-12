      write (6,10)
10    format(1h1,5x,'                 test ... b0000140')
      ip = 0
      call f09205 (ip)
      if (ip.ne.0 ) go to 30
      write ( 6,20 )
20    format(1h0,20x,'b0000140',5x,'ok')
30    write (6 ,40 )
   40 format(1h0,'    end run unit')
      stop
      end
      subroutine f09205 (ip)
      iuo = 55
      fkansu = f09206(ip)
      return
      e n d
      function f09206(ip)
      implicit logical(l)
      dimension we027(3,3,3), we127(3,3,3),ie010(10),we210(10)
      equivalence ( we027(1,1,1),ewe027(1))
      equivalence (we027(1,1,1),we0(1)),(we127(1,1,1),we1(1))
     0data we027 / 27* (0.0d0,1.0d1 ) /, we127 / 27*( 9.9d0, 9.9d0) /
     e,ie010 / 10*2 / , lx1,lx2,lx3 / 3*.true. /
      dimension we0(27),we1(27),ewe027(27)
      character*12 list
      data list/'(54(d20.15) '/
      open(10,access='direct',form='formatted',recl=2000)
      write(10,list,rec=(ie010(1)*ie010(2)+ie010(10))/ie010(5)+ie010(7))
     1     (((we027(i1,i2,i3),i1=1,3),i2=1,3),i3=1,3),we0(3),we0(4)
      read (10,list,rec=(ie010(1)*ie010(2)+ie010(10))/ie010(5)+ie010(7))
     1     (((we127(i1,i2,i3),i1=1,3),i2=1,3),i3=1,3), we210(3),we210(4)
      do 10 i=1,27
      lx1 = lx1 .and. we0(i) .eq. we1(i)
10    continue
      lx2 = we0(3) .eq. we210(3)
      lx3 = we0(4) .eq. we210(4)
20    if(lx1.and.lx2.and.lx3 ) go to 40
      ip=ip+1
      write(6,30)
30    format(1h0,20x,'ihf09204',3x,'ng')
40    f09206 = 1.0
      return
      end
