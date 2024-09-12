      program main
      implicit real*8(d),logical*4(l),integer*2(h)
      dimension  da1(100),da2(100),da3(100),da4(100)
      dimension  ld1(100),ld2(100),ld3(100),ld4(100)
      dimension  ha1(100),ha2(100),ha3(100),ha4(100)
      dimension  na1(100),na2(100),na3(100),na4(100)
      logical*1  lb1(100),lb2(100)
      data  da1,da2,da3,da4/100*1.d0,100*2.d0,100*3.d0,100*4.d0/
      data  ld1,ld2,ld3,ld4/400*.false./
      data  ha1,ha2,ha3,ha4/100*-1,100*-2,100*-3,100*-4/
      data  na1,na2,na3,na4/100*1,100*2,100*3,100*4/
      data  lb1,lb2/100*.true.,100*.false./
      nloop=99
 1111 continue
      if (nloop.gt.100) goto 9999
        do 10 i=1,nloop,2
          ld1(i)=ld2(i) .or. .not.ld4(i)
          lx = ld2(i+1) .eqv. ld3(i)
          if (lx) lx = na1(i).gt.na2(1)
          ld2(i) = lx .and. (.not.ld4(i))
          na1(i) = mod(na4(i),i)
  10    continue
        do 11 i=2,nloop,2
          lb1(i)=.not.lb2(i)  .or. na1(i).gt.ha1(i)
          ha2(i)= ha4(i)+ha3(i)
  11    continue
        write(6,*) ' ** ld1 ** ',ld1
        write(6,*) ' ** ld2 ** ',ld2
        write(6,*) ' ** lb1 ** ',lb1
        write(6,*) ' ** na1 ** '
        write(6,600) na1
        write(6,*) ' ** ha2 ** '
        write(6,600) ha2
        dsum=0.d0
        do 20 i=3,90
          dx = da1(i)+da2(i+1)*da3(i+2)
          dif = dx-da4(i)
          if (dif.gt.0.d0) then
            da4(i)=dx
            na2(i)=i
            dsum=dsum + dx - da1(i-1)
          endif
  20    continue
        write(6,*) ' ** na2 ** '
        write(6,600) na2
        write(6,*) ' ** da4 ** '
        write(6,601) da4
        write(6,*) ' ** dsum = ',dsum,' ** '
        dmx=0.d0
        do 21 i=1,30
          if (ld1(i).and. .not.ld4(i)) then
            da1(i) = 2.d0*da1(i)-1.d0
            if (da1(i).gt.da2(i)) then
              dx =da3(i)+dfloat(na3(i))
              dif1=dmx1-dx
              if (dif1.gt.0.d0) then
                dmx1 = dx
              endif
            endif
          endif
  21    continue
        dsum1=0.d0
        do 22 i=51,nloop-1
          dx1 = dsum1 + da1(i)-da2(i+1)
          dx2 = dx1 + da4(i)-dsqrt(da3(i-1))
          da1(i+1)=da2(i-1)*2.d0
          dx3 = da1(i)+da4(i+1)
          dx3 = dsqrt(dx3)-dfloat(i-na3(i))
          dsum1 = dx3 + dx2 - da1(i)
  22    continue
        write(6,*) ' ** da1 ** '
        write(6,601) da1
        write(6,*) ' ** dsum1 = ',dsum1,' ** '
        nloop=nloop+1
      goto 1111
 9999 continue
 600  format(1h ,10(10(i6,1x)/ ,1h ) )
 601  format(1h ,20(5(e12.5,1x)/ ,1h ) )
      stop
      end
