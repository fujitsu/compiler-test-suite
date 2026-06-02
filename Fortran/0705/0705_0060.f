      call s1
      print *,'pass'
      end
      subroutine s1
      character*1 c1(10000),c2(10000)
      call s11
      do i=1,10000
        write(c1(i),'(i1)') mod(i,10)
        write(c2(i),'(i1)') mod(i,10)
      enddo
      write(2,*) 'z'
      rewind 2
      call s12(c1,c2,10000)
      end
      function jfun(c,d)
      character*(*) c(*),d(*)
      do k=1,10000
         if (c(k).ne.d(k)//d(k)) then
            print *,'fail'
         endif
      end do
      if (len(c).ne.2)print *,'fail'
      if (len(d).ne.1)print *,'fail'
      jfun =2
      end
      function ifun(c)
      character*(*) c(*)
      structure /cx/
        character*2 c(100)
        integer     ii(100)
      end structure
      record /cx/ rx(100)
      character*2 hx,hy
      do k=1,10000
         write(hx(1:1),'(i1)') mod(k,10)
         hx(2:2)=hx(1:1)
         if (c(k).ne.hx) then
            print *,'error code : 41',c(k),hx,k
            print *,'fail'
         endif
      end do
      k=0
      m2=2
      do i=1,100
      do j=1,100
        k=k+1
        rx(i).c(j) = c(k)
        read(rx(i).c(j)(1:1),'(a)')hx    
        read(rx(i).c(j)(m2:2),* ) hy
        read(hx,'(i2)') rx(i).ii(j)
        read(hy,*)      ky
        if (rx(i).ii(j).ne.mod(j,10)) then
             print *,'error code : 21',j,rx(i).ii(j),ky,hx,hy
             print *,'fail'
        end if
        if (ky.ne.mod(j,10)) then
             print *,'error code : 21',j,rx(i).ii(j),ky,hx,hy
             print *,'fail'
        end if
      end do
      end do
      if (len(c).ne.2)print *,'fail'
      if (len(c).ne.2) then
          print *,'error code : 23'
      endif
      ifun =i-j+2
      end
      subroutine s12(c1,c2,i)
      character*(*),dimension(-i:-i-1+i)::c1,c2
      character*2 z1,z2
      z1='??'
      z2='??'
      if (ifun(c1//c2).ne.ifun(c2//c1)) then
        print *,'error code : 61'
        print *,'fail'
      endif
      read (2,end=101,fmt=*) z1(:jfun(c1//c2,c1))
      if (z1.ne.'z ')then
         print *,'error code : 11',z1//'#'
         print *,'fail'
      end if
      read (2,end=102,fmt=*) z2(:jfun(c1//c2,c2))
      print *,'fail'
      print *,'error code : 33'
      return
 101  continue
      print *,'error code : 34'
 102  return
      end
      subroutine s11
      structure /xx/
        character*3 a
      end structure
      record /xx/ x1,x2
      character*1 a
      x1.a='abc'
      write(1,*) x1.a
      rewind 1
      read (1,*) x2.a
      read (1,*,end=10) a
      print *,'error code : 3'
      print *,'fail'
      goto 20
 10   continue
 20   if (x2.a.ne.'abc') then
        print *,'error code : 2,',x2.a
        print *,'fail'
      endif
      rewind 1
      x1.a='xyz'
      read (1,*) x2.a
      if (x2.a.ne.'abc') then
        print *,'error code : 1,',x2.a
        print *,'fail'
      endif
      read (1,*,end=30) a
      print *,'error code : 4'
      print *,'fail'
      return 
30    end
