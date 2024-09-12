      write (6,10)
   10 format(1h0,20x,'                 test ... b0000860')
      ip = 0
      call f09105 (ip)
      if (ip.ne.0 ) go to 30
      write ( 6,20 )
20    format(1h0,20x,'b0000860',5x,'ok')
30    write (6 ,40 )
   40 format(1h0,5x,'end rununit')
      stop
      end
      subroutine f09105 (ip)
      implicit logical(l),real*8(d)
      dimension d4024(2,3,4), d4124(2,3,4),
     1          d4224(2,3,4), d4324(2,3,4)
      character*8 form
      ibunk1(i00,i01) = i00+i01
      data i1,i2 /10,12/,d4024,d4124 /24*10.5d2,24*20.5d3/
      data form/'(d15.5 )'/,sd/0./
      open(15,access='direct',form='formatted',recl=250)
      i3=i1-i2+ifix(4.4)*ibunk1(i1,i2)/2**2
      if ((i1-i2+ifix(4.4)*ibunk1(i1,i2)/2**2).ne.20)
     1 write(6,*)i1-i2+ifix(4.4)*ibunk1(i1,i2)/2**2
      write(15,form,rec=i1-i2+ifix(4.4)*ibunk1(i1,i2)/2**2)
     1     (((d4024(i,j,k) , i=1,2),j=1,3),k=1,4)
      inquire(15,nextrec=kv4)
      write(15,10,rec=kv4) d4124
10    format(d15.5)
      kv4=i3
100   read(15,10,rec=kv4) d4224
      do 150 k=1,4
      do 150 j=1,3
      do 150 i=1,2
      sd = sd + d4224(i,j,k)
150   continue
      if (abs(sd-25200.0).gt.1.0e-6) write(6,*)d4224
      read(15,form,rec=i1-i2+ifix(4.4)*ibunk1(i1,i2)/2**2+24)
     1    (((d4324(i,j,k),i=1,2),j=1,3),k=1,4)
      inquire(15,nextrec=kv4)
      i4=kv4
200   lx1= .true.
      lx2= .true.
      do 12 k=1,1
      do 12 j=1,1
      do 12 i=1,1
      if (abs(d4024(i,j,k)-1050.0).gt.1.0e-6) write(6,*)d4024(i,j,k)
      if (abs(d4024(i,j,k)-1050.0).gt.1.0e-6) write(6,*)d4024(i,j,k)
      if (abs(d4024(i,j,k)-d4224(i,j,k)).gt.1.0e-6)
     1write(6,*)d4024(i,j,k)-d4224(i,j,k)
      if (abs((d4024(i,j,k)-d4224(i,j,k))/d4024(i,j,k)-0.0).gt.1.0e-6)
     1write(6,*)(d4024(i,j,k)-d4224(i,j,k))/d4024(i,j,k)
      if (.not.dabs((d4024(i,j,k)-d4224(i,j,k))/d4024(i,j,k)).lt.10d-16)
     1write(6,*)dabs((d4024(i,j,k)-d4224(i,j,k))/d4024(i,j,k)).lt.10d-16
      write(1,*)d4024(i,j,k)
      write(1,*)d4224(i,j,k)
      write(1,*)d4024(i,j,k)-d4224(i,j,k)
      write(1,*)(d4024(i,j,k)-d4224(i,j,k))/d4024(i,j,k)
      write(1,*)dabs((d4024(i,j,k)-d4224(i,j,k))/d4024(i,j,k)).lt.10d-16
      lx2 =lx2 .and.
     1   dabs((d4124(i,j,k)-d4324(i,j,k))/d4124(i,j,k)).lt.10d-16
12    continue
15    if(lx1.and.lx2) go to 30
      ip=ip+1
      write(6,20)
20    format(1h0,20x,'ihf09105',3x,'ng')
30    if(i4.eq.i3+48) go to 50
      ip=ip+1
      write(6,40)
   40 format(1h0,20x,'ihf09106  ng')
      write(6,45)i4,kv4
   45 format(10x,2i10)
50    return
      e n d
