      call s
      print *,'pass'
      end
      subroutine set_x3(x)
      structure /x3/
        complex x31
        complex x32(5)
        character*4 x33
        character*4 x34(5)
      end structure
      record /x3/ x
      x.x31 = (1,1)
      do 1 i=1,5
       x.x31=x.x31+(1,1)
       x.x32(i)=x.x31
  1   continue
      x.x31 = x.x31-(5,5)
      write(x.x33,'(I4.4)') int(x.x31)
      do 2 i=1,5
        write(x.x34(i),'(i4.4)') i+1
  2   continue
      end
      subroutine err(i1,i2)
      print *,'error code :',i1,i2
      end
      subroutine chk_x3(x,k)
      structure /x3/
        complex x31
        complex x32(5)
        character*4 x33
        character*4 x34(5)
      end structure
      complex y
      character*4 z
      record /x3/ x
      if (x.x31 .ne. (1,1)) call err( 1001 , k)
      y=x.x31
      do 1 i=1,5
       y=y+(1,1)
       if (x.x32(i).ne.y)call err(1002 ,k)
  1   continue
      if (x.x33.ne.'0001')call err(1003 ,k)
      do 2 i=1,5
        write(z,'(i4.4)') i+1
        if (z.ne.x.x34(i))call err(1004,k)
  2   continue
      end
      subroutine s
      structure /x3/
        complex x31
        complex x32(5)
        character*4 x33
        character*4 x34(5)
      end structure
      structure /x2/
        record /x3/ x21
        record /x3/ x22(5)
      end structure
      record /x2/ x11
      record /x2/ x12(5)
      call set_x3(x11.x21)
      do 101 i=1,5
         call set_x3(x11.x22(i))
 101  continue
      x12=x11      
      call chk_x3(x11.x21   ,1)
      call chk_x3(x11.x22(1),2)
      call chk_x3(x11.x22(2),3)
      call chk_x3(x11.x22(3),4)
      call chk_x3(x11.x22(4),5)
      call chk_x3(x11.x22(5),6)
      call chk_x3(x12(1).x21,7)
      call chk_x3(x12(2).x21,8)
      do 102 i=3,5
         call chk_x3(x12(i).x21,9)
 102  continue
      call chk_x3(x12(1).x22(1),10)
      do 103 i=2,5
        call chk_x3(x12(1).x22(i),11)
 103  continue
      do 104 j=-11,-15,-1
      do 104 i=11,15
        call chk_x3(x12(j+16).x22(i-10),12)
 104  continue
      n=1
      i=5
      call chk_complex(x11.x21.x32     ,5,(2,2),001)
      call chk_complex(x11.x21.x32(1)  ,5,(2,2),002)
      call chk_complex(x11.x21.x32(n)  ,5,(2,2),003)
      call chk_complex(x11.x21.x32(2)  ,4,(3,3),004)
      call chk_complex(x11.x21.x32(n+1),4,(3,3),005)
      call chk_complex(x11.x21.x32(3)  ,3,(4,4),006)
      call chk_complex(x11.x21.x32(4)  ,2,(5,5),007)
      call chk_complex(x11.x21.x32(n+4),1,(6,6),008)
      call chk_complex(x11.x22(1).x32     ,5,(2,2),011)
      call chk_complex(x11.x22(2).x32(1)  ,5,(2,2),012)
      call chk_complex(x11.x22(3).x32(n)  ,5,(2,2),013)
      call chk_complex(x11.x22(4).x32(2)  ,4,(3,3),014)
      call chk_complex(x11.x22(5).x32(n+1),4,(3,3),015)
      call chk_complex(x11.x22(1).x32(3)  ,3,(4,4),016)
      call chk_complex(x11.x22(3).x32(4)  ,2,(5,5),017)
      call chk_complex(x11.x22(5).x32(n+4),1,(6,6),018)
      call chk_complex(x11.x22(i).x32     ,5,(2,2),021)
      call chk_complex(x11.x22(i).x32(1)  ,5,(2,2),022)
      call chk_complex(x11.x22(i).x32(n)  ,5,(2,2),023)
      call chk_complex(x11.x22(i).x32(2)  ,4,(3,3),024)
      call chk_complex(x11.x22(i).x32(n+1),4,(3,3),025)
      call chk_complex(x11.x22(i).x32(3)  ,3,(4,4),026)
      call chk_complex(x11.x22(i).x32(4)  ,2,(5,5),027)
      call chk_complex(x11.x22(i).x32(n+4),1,(6,6),028)
      call chk_complex(x11.x22(n+4).x32     ,5,(2,2),031)
      call chk_complex(x11.x22(n+4).x32(1)  ,5,(2,2),032)
      call chk_complex(x11.x22(n+4).x32(n)  ,5,(2,2),033)
      call chk_complex(x11.x22(n+4).x32(2)  ,4,(3,3),034)
      call chk_complex(x11.x22(n+4).x32(n+1),4,(3,3),035)
      call chk_complex(x11.x22(n+4).x32(3)  ,3,(4,4),036)
      call chk_complex(x11.x22(n+4).x32(4)  ,2,(5,5),037)
      call chk_complex(x11.x22(n+4).x32(n+4),1,(6,6),038)
      call chk_complex(x12(  5).x21.x32     ,5,(2,2),101)
      call chk_complex(x12(  5).x21.x32(1)  ,5,(2,2),102)
      call chk_complex(x12(  5).x21.x32(n)  ,5,(2,2),103)
      call chk_complex(x12(  5).x21.x32(2)  ,4,(3,3),104)
      call chk_complex(x12(  5).x21.x32(n+1),4,(3,3),105)
      call chk_complex(x12(  5).x21.x32(3)  ,3,(4,4),106)
      call chk_complex(x12(  5).x21.x32(4)  ,2,(5,5),107)
      call chk_complex(x12(  5).x21.x32(n+4),1,(6,6),108)
      call chk_complex(x12(  5).x22(1).x32     ,5,(2,2),111)
      call chk_complex(x12(  5).x22(2).x32(1)  ,5,(2,2),112)
      call chk_complex(x12(  5).x22(3).x32(n)  ,5,(2,2),113)
      call chk_complex(x12(  5).x22(4).x32(2)  ,4,(3,3),114)
      call chk_complex(x12(  5).x22(5).x32(n+1),4,(3,3),115)
      call chk_complex(x12(  5).x22(1).x32(3)  ,3,(4,4),116)
      call chk_complex(x12(  5).x22(3).x32(4)  ,2,(5,5),117)
      call chk_complex(x12(  5).x22(5).x32(n+4),1,(6,6),118)
      call chk_complex(x12(  5).x22(i).x32     ,5,(2,2),121)
      call chk_complex(x12(  5).x22(i).x32(1)  ,5,(2,2),122)
      call chk_complex(x12(  5).x22(i).x32(n)  ,5,(2,2),123)
      call chk_complex(x12(  5).x22(i).x32(2)  ,4,(3,3),124)
      call chk_complex(x12(  5).x22(i).x32(n+1),4,(3,3),125)
      call chk_complex(x12(  5).x22(i).x32(3)  ,3,(4,4),126)
      call chk_complex(x12(  5).x22(i).x32(4)  ,2,(5,5),127)
      call chk_complex(x12(  5).x22(i).x32(n+4),1,(6,6),128)
      call chk_complex(x12(  5).x22(n+4).x32     ,5,(2,2),131)
      call chk_complex(x12(  5).x22(n+4).x32(1)  ,5,(2,2),132)
      call chk_complex(x12(  5).x22(n+4).x32(n)  ,5,(2,2),133)
      call chk_complex(x12(  5).x22(n+4).x32(2)  ,4,(3,3),134)
      call chk_complex(x12(  5).x22(n+4).x32(n+1),4,(3,3),135)
      call chk_complex(x12(  5).x22(n+4).x32(3)  ,3,(4,4),136)
      call chk_complex(x12(  5).x22(n+4).x32(4)  ,2,(5,5),137)
      call chk_complex(x12(  5).x22(n+4).x32(n+4),1,(6,6),138)
      call chk_complex(x12(  i).x21.x32     ,5,(2,2),201)
      call chk_complex(x12(  i).x21.x32(1)  ,5,(2,2),202)
      call chk_complex(x12(  i).x21.x32(n)  ,5,(2,2),203)
      call chk_complex(x12(  i).x21.x32(2)  ,4,(3,3),204)
      call chk_complex(x12(  i).x21.x32(n+1),4,(3,3),205)
      call chk_complex(x12(  i).x21.x32(3)  ,3,(4,4),206)
      call chk_complex(x12(  i).x21.x32(4)  ,2,(5,5),207)
      call chk_complex(x12(  i).x21.x32(n+4),1,(6,6),208)
      call chk_complex(x12(  i).x22(1).x32     ,5,(2,2),211)
      call chk_complex(x12(  i).x22(2).x32(1)  ,5,(2,2),212)
      call chk_complex(x12(  i).x22(3).x32(n)  ,5,(2,2),213)
      call chk_complex(x12(  i).x22(4).x32(2)  ,4,(3,3),214)
      call chk_complex(x12(  i).x22(5).x32(n+1),4,(3,3),215)
      call chk_complex(x12(  i).x22(1).x32(3)  ,3,(4,4),216)
      call chk_complex(x12(  i).x22(3).x32(4)  ,2,(5,5),217)
      call chk_complex(x12(  i).x22(5).x32(n+4),1,(6,6),218)
      call chk_complex(x12(  i).x22(i).x32     ,5,(2,2),221)
      call chk_complex(x12(  i).x22(i).x32(1)  ,5,(2,2),222)
      call chk_complex(x12(  i).x22(i).x32(n)  ,5,(2,2),223)
      call chk_complex(x12(  i).x22(i).x32(2)  ,4,(3,3),224)
      call chk_complex(x12(  i).x22(i).x32(n+1),4,(3,3),225)
      call chk_complex(x12(  i).x22(i).x32(3)  ,3,(4,4),226)
      call chk_complex(x12(  i).x22(i).x32(4)  ,2,(5,5),227)
      call chk_complex(x12(  i).x22(i).x32(n+4),1,(6,6),228)
      call chk_complex(x12(  i).x22(n+4).x32     ,5,(2,2),231)
      call chk_complex(x12(  i).x22(n+4).x32(1)  ,5,(2,2),232)
      call chk_complex(x12(  i).x22(n+4).x32(n)  ,5,(2,2),233)
      call chk_complex(x12(  i).x22(n+4).x32(2)  ,4,(3,3),234)
      call chk_complex(x12(  i).x22(n+4).x32(n+1),4,(3,3),235)
      call chk_complex(x12(  i).x22(n+4).x32(3)  ,3,(4,4),236)
      call chk_complex(x12(  i).x22(n+4).x32(4)  ,2,(5,5),237)
      call chk_complex(x12(  i).x22(n+4).x32(n+4),1,(6,6),238)
      end
      subroutine chk_complex(c,i,r,m)
      complex c(*),r,rr
      rr=r
      do 1 j=1,i
        if (c(j).ne.rr)call err(3001,m)
        rr=rr+(1,1)
 1    continue
      end
      subroutine chk_char(c,i,r,m)
      character(*) c(*),r,rr*100
      rr(:len(r))=r
      read(rr(:len(r)),'(i4)') k
      do 1 j=1,i
        if (c(j).ne.rr(:len(r)))call err(4001,m)
        k=k+1
        write(rr(:len(r)),'(i4.4)') k
 1    continue
      end
