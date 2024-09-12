10    format(1h1,5x,'                 test ... b0000480')
      write(6,10)
      ip = 0
      call f09209 (ip)
      if (ip.ne.0 ) go to 30
      write ( 6,20 )
20    format(1h0,20x,'b0000480',5x,'ok')
30    write (6 ,40 )
40    format(1h0,5x,'end rununit')
      stop
      end
      subroutine f09209 (ip)
      implicit complex(c),complex*16(w)
      implicit character*8(d,t)
      real*8 d,dh200
      common /labelh / th099(5,5,5,5 ), th299(5,5,5,5)
      character*8 list
      dimension ih099(2,2,3,4,5,6,7)
      call  f09208(iuh)
      data list/'(g10.2)'/
      data ih100,ih200,ih300 / 2,4,6 /,ih099(2,1,2,4,1,4,6) / 2 /
      data  d18/'12345678'/
      data  tah/'abcdefgh'/
      open(10,access='direct',recl=500,form='formatted')
      i = 0
      a = 1.0
      d = 2.0d+2
      c = (1.0e1,2.0e-1)
      w = (3.0d3,4.0d4)
15    format(a8)
      write(iuh,list,rec=ih100*ih099(2,1,2,4,1,4,6)+ih200-ih300)
     1 i,a,((th099(i-5,j-5,5,5),i=6,10,1),j=6,10,1),d,c,w
      inquire(10,nextrec=kvh)
      write(10,15,rec=kvh) d18,tah
      read(iuh,list,rec=2) ih200, rh200, ((th299(i,j,5,5),i=1,5),j=1,5)
     1,dh200,ch200,wh200
      read(iuh,15,rec=34) th300,th400
      d123 = d18
      tabc = tah
1000  if(0.eq.ih200.and.1.0.eq.rh200.and.2.0d+2.eq.dh200.and.1.0e1.eq.
     1real(ch200) .and. 2.0e-1 .eq.imag(ch200).and.3.0d3.eq.dreal(wh200)
     2.and.4.0d4.eq.dimag(wh200).and.d123.eq.th300.and.tabc.eq.th400)
     e  go to 200
      ip=ip+1
      write(6, 150)
150   format(1h0,20x,'ihf09206',3x, 'ng' )
200   do 300 j=6,10,1
      do 300 i=6,10,1
      if( th099 (i-5,j-5,5,5) .eq.th299(i-5,j-5,5,5) ) go to 300
      ip=ip+1
      write (6,3500)
300   continue
3500  format(1h0,20x,'ihf09207',3x,'ng',5x,'blockdatade'
     *  ,
     e ' ng' )
400   return
      e n d
      subroutine f09208 (iug )
      iug=60
      iug=10
      return
      e n d
      block data
      common /labelh/th099,th299(5,5,5,5)
      real*8  th099(5,5,5,5)/100*1.0d1,200*2.0d2,325*3.0d3/
      real*8  th299
      end
