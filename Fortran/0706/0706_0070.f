      call s1
      print *,'pass'
      end
      subroutine s1
      interface 
      subroutine ss1(c5,i,c8)
       character*(*)   c5(i,i,i+3)
       character*2     c8(:,:,:)
       end subroutine ss1
      end interface   
      parameter (i=2)
      character*(2)   c5(i,i,i+3)
      character*(2)   c8(i,i,i+3)
      call       ss1(c5,i,c8)
      end
      subroutine ss1(c5,i,c8)
      character*40,parameter:: 
     1  c1='(1x,10habcdefghij,i2.2,9h123456789,2h01)'
      character*40    c2
      character*2     c3(20)
      character*2     c4(2,2,5)
      character*(*)   c5(i,i,i+3)
      character*2,pointer::     c6(:)
      character*2,pointer::     c7(:,:,:)
      character*2     c8(:,:,:)
      integer v1(2)/1,2/,v2(5)/1,2,3,4,5/,
     1        v3(20)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      allocate (c6(20),c7(i,i,i+3))
      c2=c1
      call set_s(to=c3,from=c2)
      call set_a(to=c4,from=c3)
      call set_a(to=c5,from=c4)
      call set_a(to=c6,from=c5)
      call set_a(from=c6,to=c7)
      call set_a(from=c7,to=c8)
      write (11,fmt=c1) 1;call chk(11,'01')
      write (12,fmt=c2) 2;call chk(12,'02')
      write (13,fmt=c3) 3;call chk(13,'03')
      write (14,fmt=c4) 4;call chk(14,'04')
      write (15,fmt=c5) 5;call chk(15,'05')
      write (16,fmt=c3(:i*10)) 6;call chk(16,'06')
      write (17,fmt=c4(1:i,1:i,1:i+3)) 7;call chk(17,'07')
      write (18,fmt=c5(1:i,1:i,1:i+3)) 8;call chk(18,'08')
      write (19,fmt=c3(v3)) 9;call chk(19,'09')
      write (20,fmt=c4(v1,v1,v2)) 10;call chk(20,'10')
      write (21,fmt=c5(v1,v1,v2)) 11;call chk(21,'11')
      write (22,fmt=c2(:10)//c2(11:)) 1;call chk(22,'01')
      write (23,fmt=c6) 2;call chk(23,'02')
      write (24,fmt=c7) 3;call chk(24,'03')
      write (25,fmt=c6(:i*10)) 4;call chk(25,'04')
      write (26,fmt=c7(1:i,1:i,1:i+3)) 5;call chk(26,'05')
      write (27,fmt=c6(v3)) 6;call chk(27,'06')
      write (28,fmt=c7(v1,v1,v2)) 7;call chk(28,'07')
      write (29,fmt=c8) 8;call chk(29,'08')
      contains
      subroutine set_s(to,from)
      character*(*) to(20),from
      jj=1
      do j=1,20; to(j)=from(jj:jj+1); jj=jj+2;end do
      end subroutine
      subroutine set_a(to,from)
      character*(*) to(20),from(20)
      to=from
      end subroutine
      end subroutine
      subroutine chk(u,c)
      integer u; character*40 cc,c*(*)
      rewind u; read (u,'(a)') cc;
      if (cc/=' '//'abcdefghij'//c//'123456789'//'01')print *,'fail'
      end
