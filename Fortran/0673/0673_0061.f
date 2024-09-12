      write (6,10)
   10 format('1',5x,'                 test ... c0000820'/)
      ip=0
      call f69101(ip)
      call f69103(ip)
      if(ip.ne.0) go to 30
      write(6,20)
   20 format(21x,'test',5x,
     * 'c0000820     ok'/)
   30 write(6,40)
   40 format(6x,'end rununit')
      stop
      end
      subroutine f69101(ip)
      implicit character*4(b)
      logical l1,l2,l3,l4,l5,l6
      character*4 list
      a20=20.0
      open(8,access='direct',form='formatted',recl=50)
      do 10 i=2,6,2
      m=(-4+i)*100
      if(m) 20,30,40
   20 a=6.0*3/2+1.1e+1
      write(8,50,rec=1) a,a20
      assign 10 to line
      go to line, (10,20,30,40)
   30 call f69102 (l1)
      l2 =.false.
      write(8,60,rec=2) l1,l2
      go to 10
      data b/'word'/,bb/4hword/
   40 write(8,70,rec=3)b,bb
   10 continue
   50 format(2f5.1)
   60 format(2l4)
   70 format(2a4)
      read(8,80,rec=1) a1,a2,l3,l4,b1,b2
   80 format(2f5.1 / 2l4 / 2a4 )
      if(a.eq.a1.and.a20.eq.a2.and.l1.and.l3.and..not.(l2.or.l4).and.
     *  b.eq.b1.and.bb.eq.b2) go to 85
      ip=ip+1
      write(6,81)a,a20,l1,l2,b,bb,a1,a2,l3,l4,b1,b2
   81 format(21x,2(10x,2f9.1,2l9,a4,5x,a4/),21x,'f69101  ng')
   85 rewind 4
      write(4,80) a1,a2,l3,l4
      write(4,70) b1,b2
      backspace 4
      rewind 4
      read (4,80) a3,a4,l5,l6
      read(4,70) b3,b4
      if(a1.eq.a3.and.a2.eq.a4.and.l3.and.l5.and..not.(l4.or.l6).and.
     *  b1.eq.b3.and.b2.eq.b4) go to 800
      ip=ip+1
      write(6,81)a1,a2,l3,l4,b1,b2,a3,a4,l5,l6,b3,b4
  800 s1=3.141592
      data list/'Pi ='/
      write(6,810)list,s1
  810 format('0',20x,a4,f10.6)
      print 90,a3,a4,l5,l6,b3,b4
   90 format(f6.1,3h ' ,f5.1 / l5,3h ' ,l4 / 1x,a4,3h ' ,a4)
      return
      e n d
      subroutine f69102 (l )
      logical l
      l =.true.
      if(.not.l) l=.false.
      return
      e n d
      subroutine f69103(ip)
      implicit character*4(b)
      logical l1,l2,l3,l4,l5,l6
      a20=20.0
      open(10,access='direct',form='unformatted',recl=250)
      do 10 i=2,6,2
      m=-4+i
      if(m) 20,30,40
   20 a=6.0*3/2+1.1e+1
      write(10,rec=1) a,a20
      j=1
      go to (10,20,30,40),j
   30 call f69102 (l1)
      l2= .false.
      write (10,rec=2) l1,l2
      go to 10
      data b/'word'/,bb/4hword/
   40 write(10,rec=3)b,bb
   10 continue
      read(10,rec=1) a1,a2
      read(10,rec=2) l3,l4
      read(10,rec=3) b1,b2
      if(a.eq.a1 .and.a20.eq.a2.and.l1.and.l3.and..not.(l2.or.l4).and.
     * b.eq.b1.and.bb.eq.b2) go to 50
      ip=ip+1
      print 65,a1,a2, l3, l4,b1,b2
   65 format(21x,'f69103  ng',2(10x,f9.2),2l10,2(10x,a4))
   50 write( 9) a1,a2
      write(9)  l3,l4
      back space 9
      back space 9
      read(9) a3,a4
      read (9) l5,l6
      print 105,a3,a4, l5,l6
  105 format(f6.1,3h ' ,f5.1 / l5,3h ' ,l4)
      return
      e n d
