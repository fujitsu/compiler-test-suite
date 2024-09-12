      write ( 6 , 10 )
   10 format('1',5x,'                 test ... a0000870'/)
      ip= 0
      ipx= 14
      call f10118 (ip)
      call f10105 (ip)
      call f10106 (ip , ipx )
      if ( ip .ne. 0 ) go to 100
      write ( 6 , 20 )
   20 format('0',20x,'a0000870     ok'/)
  100 write ( 6 , 30 )
   30 format (1h , 5x , 'end rununit' )
      stop
      end
      subroutine f10106 (ip,ipx)
      dimension i5005(5) , i5103(3) , r5004(4) , r5104(4) ,
     1 i5202(2) , i5308(8) , i5503(3)
      equivalence ( r5104(3) , r5200 )
      character*4  s5000 , s5100
      data i5005,i5103,r5004,i5202,i5308 / 50,2*4,1000,
     1 3*35 , 11 , .1973e10 , 2*1234.56e5 , 129 , 3 , 19 , 205 , 37 ,
     2 4096 , 2*1 , 49 , 10001 , 50 /
      data s5000 /'abcd'/
      i6000 = 20
      open(14,access='direct',form='unformatted',recl=25)
      write (ipx , rec=10 ) i6000
   10 i5400= i5005(2)+ 124
      write (ipx, rec=(((i5308(3)+i5308(1))*2)/i5005(4)-i5202(2)+37+
     1       i5103(2)/i5103(3)+i5005(1)/i5005(2)+8) ) i5400 , i5308(5),
     2       i5005(2) , i5308(1) ,(r5004(j),j=1,2)
      write (ipx, rec=(((i5308(3)+i5308(1))*2)/i5005(4)-i5202(2)+37+
     1       i5103(2)/i5103(3)+i5005(1)/i5005(2)+8+1) )
     2       (r5004(j),j=3,4) , s5000
      read (ipx, rec=(i5005(5)- 19 - i5103(3)+ i5308(2)* 3 + i5202(2)
     1 - i5202(1) -83 )) i5600 , i5503(1) , i5503(2) , i5503(3),
     2 ( r5104(k), k=1,2)
      read (ipx, rec=(i5005(5)- 19 - i5103(3)+ i5308(2)* 3 + i5202(2)
     1 - i5202(1) -83+1 )) ( r5104(k), k=3,4) , s5100
  200 if ( i5400 .eq. i5600) go to 20
      write (6,100)
  1000format (1h0, 20x , 'ihf10116' , 3x ,'ng',5x,
     e 'i5400 to i5600 error')
      ip=ip+1
   20 if ( i5308(5) .eq. i5503(1)) go to 30
      write (6,110)
  1100format (1h0, 20x , 'ihf10117' , 3x ,'ng',5x,
     e 'i5308(5) to i5503(1) error')
      ip=ip+1
   30 if (i5005(2) .eq. i5503(2)) go to 40
      write (6,120)
  1200format (1h0, 20x , 'ihf10118' , 3x ,'ng',5x,
     e 'i5005(2) to i5503(2) error')
      ip= ip+1
   40 if ( i5308(1) .eq. i5503(3)) go to 50
      write (6,130)
  1300format (1h0, 20x , 'ihf10119' , 3x ,'ng',5x,
     e 'i5308(1) to i5503(3) error')
      ip= ip+1
   50 do 60 l=1,4
  210 if ( r5004(l) .eq. r5104(l)) go to 60
      write (6 ,140)
  140 format (1h0, 20x , 'ihf10120' , 3x ,'ng',5x,
     1 'r5004 to r5104 error')
      ip= ip+1
      go to 220
   60 continue
  220 if ( s5000 .eq. s5100) go to 90
      write (6 , 150)
  150 format (1h0, 20x , 'ihf10121' , 3x ,'ng',5x,
     1 's5000 to s5100 error')
      ip=ip+1
   90 return
      end
      subroutine f10105(ip)
      implicit logical (l)
      dimension i4005(5),i4108(8),l4003(3),l4103(3),i4208(8)
      data i4005 ,i4108 ,l4003
     1        /1,2,3,4,5,6,7,8,9,0,7,5,4,.true.,.true.,.false. /
      open(12,access='direct',form='unformatted',recl=12)
      i4200=10
      do 10 i1= 12 , 12
      write (i1,
     1       rec=((((i4005(4)+i4005(1))*i4005(3))-i4005(2))/i4005(5)))
     2       i4200,l4003(2),l4003(3)
      write (i1,
     1       rec=((((i4005(4)+i4005(1))*i4005(3))-i4005(2))/i4005(5)+1))
     2       (i4108(j),j=1,3)
      write (i1,
     1       rec=((((i4005(4)+i4005(1))*i4005(3))-i4005(2))/i4005(5)+2))
     2       (i4108(j),j=4,6)
      write (i1,
     1       rec=((((i4005(4)+i4005(1))*i4005(3))-i4005(2))/i4005(5)+3))
     2       (i4108(j),j=7,8)
   10 continue
      do 20 i2= 12 ,12
      read(i2, rec=(((( i4108(2)*i4005(4))/i4200 )-i4108(5))*17-32))
     1     i4300,l4103(2),l4103(3)
      read(i2, rec=(((( i4108(2)*i4005(4))/i4200 )-i4108(5))*17-32+1))
     1     (i4208(j4),j4=1,3)
      read(i2, rec=(((( i4108(2)*i4005(4))/i4200 )-i4108(5))*17-32+2))
     1     (i4208(j4),j4=4,6)
      read(i2, rec=(((( i4108(2)*i4005(4))/i4200 )-i4108(5))*17-32+3))
     1     (i4208(j4),j4=7,8)
   20 continue
  200 if ( i4300 .eq. 10) go to 30
      write (6,100)
  100 format (1h0, 20x , 'ihf10113' , 3x ,'ng',5x,
     1 'i4300 to 10 error')
      ip= ip+1
   30 if (l4103(2).and. l4003(2)) go to 40
      write (6 , 110)
  110 format (1h0, 20x ,'ihf10114' , 3x ,'ng',5x,
     1 'l4103 to l4003 error')
      ip= ip+1
   40 do 50 n= 1 , 8
  210 if ( i4208(n) .eq. i4108(n)) go to 50
      write (6, 120)
  120 format (1h0, 20x , 'ihf10115' , 3x ,'ng',5x,
     1 'i4208 to i4108 error')
      ip=ip+1
      go to 70
   50 continue
   70 continue
      return
      end
      subroutine f10118 (ip)
       implicit real(s)
      dimension i0105(5) , i0205(5)
      real*8 d0100, d0200
      character*4 s0100,s0200
      data  i0105, d0100,s0100
     1 / 520 , 3 , 2345 , 1 , 10000 , 2.35987751d4 , 'abc' /
      open(9,access='direct',form='unformatted',recl=20)
      i0300 = 99
      write ( 9 , rec=3 ) i0105
      write ( 9 , rec=4 ) d0100 , i0300
      write ( 9 , rec=5 ) s0100
      read ( 9 , rec=3 ) (i0205(n), n= 1 , 4 )
      read ( 9 , rec=4 ) d0200
      read ( 9 , rec=5 ) s0200
      do 10 k= 1 , 4
  200 if ( i0205(k) .eq. i0105(k) ) go to 10
      write ( 6 , 100 )
  100 format (1h0, 20x , 'ihf10141' , 3x ,'ng', 5x ,
     1 'error' )
      ip= ip+1
      go to 20
   10 continue
   20 if ( d0200 .eq. d0100 ) go to 30
      write ( 6 , 110 )
  110 format (1h0, 20x , 'ihf10142' , 3x , 'ng', 5x,
     1 'd0200 to d0100 error' )
      ip= ip+1
   30 if ( s0200 .eq. s0100 ) go to 40
      write ( 6 , 120 )
  120 format (1h0, 20x , 'ihf10143' , 3x ,'ng', 5x,
     1 's0200 to s0100 error' )
      ip= ip+1
   40 return
      end
