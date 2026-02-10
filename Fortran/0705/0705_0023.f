      call s1
      print *,'pass'
      end
      subroutine s1
      call t1
      call t2
      end
      subroutine t1
      parameter (m2=2,m1=1)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2)
      character*3 cc(m1:m2,m1:m2,m1:m2)
      call ss1(loc(aa),loc(bb),loc(cc),m1,m2)
      call ss2(loc(aa),loc(bb),loc(cc),m1,m2)
      call sk1(loc(aa),loc(bb),loc(cc),m1,m2)
      call sk2(loc(aa),loc(bb),loc(cc),m1,m2)
      call sk3(loc(aa),loc(bb),loc(cc),m1,m2)
      end
      subroutine ss1(ia,ib,ic,m1,m2)
      pointer (ia,aa),(ib,bb),(ic,cc)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2)
      character*(3) cc(m1:m2,m1:m2,m1:m2)
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
         bb(i3,i2,i1)=i3+i2*10+i1*100
         write(cc(i3,i2,i1)(1:1),'(i1)') i3
         write(cc(i3,i2,i1)(2:2),'(i1)') i2
         write(cc(i3,i2,i1)(3:3),'(i1)') i1
         do i4=m1,m2
         do i5=m1,m2
         do i6=m1,m2
         aa(i6,i5,i4)%bb(i3,i2,i1)=
     1            i6+i5*10+i4*100+i3*1000+i2*10000+i1*100000
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(1:1),'(i1)') i6
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(2:2),'(i1)') i5
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(3:3),'(i1)') i4
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(4:4),'(i1)') i3
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(5:5),'(i1)') i2
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(6:6),'(i1)') i1
         end do
         end do
         end do
      end do
      end do
      end do
      end
      subroutine ss2(ia,ib,ic,m1,m2)
      pointer (ia,aa),(ib,bb),(ic,cc)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2)
      character*(3) cc(m1:m2,m1:m2,m1:m2)
      character*6 tmp_cc
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
         if (bb(i3,i2,i1)/=i3+i2*10+i1*100)call err(1,i3,i2,i1,0,0,0)
         write(tmp_cc(1:1),'(i1)') i3
         write(tmp_cc(2:2),'(i1)') i2
         write(tmp_cc(3:3),'(i1)') i1
         if (cc(i3,i2,i1)/=tmp_cc(1:3))call err(2,i3,i2,i1,0,0,0)
         do i4=m1,m2
         do i5=m1,m2
         do i6=m1,m2
         if(aa(i6,i5,i4)%bb(i3,i2,i1)/=
     1            i6+i5*10+i4*100+i3*1000+i2*10000+i1*100000)
     1      call err(3,i3,i2,i1,0,0,0)
         write(tmp_cc(1:1),'(i1)') i6
         write(tmp_cc(2:2),'(i1)') i5
         write(tmp_cc(3:3),'(i1)') i4
         write(tmp_cc(4:4),'(i1)') i3
         write(tmp_cc(5:5),'(i1)') i2
         write(tmp_cc(6:6),'(i1)') i1
         if (aa(i6,i5,i4)%cc(i3,i2,i1)/=tmp_cc(1:6))
     1                           call err(3,i3,i2,i1,0,0,0)
         end do
         end do
         end do
      end do
      end do
      end do
      end
      subroutine err(i1,i2,i3,i4,i5,i6,i7)
      print *,'error code :',i1,i2,i3,i4,i5,i6,i7
      print *,'fail'
      end
      subroutine t2
      parameter (m2=2,m1=1)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2)
      character*3 cc(m1:m2,m1:m2,m1:m2)
      call ss3(aa,bb,cc,m1,m2)
      call ss2(loc(aa),loc(bb),loc(cc),m1,m2)
      end
      subroutine ss3(aa,bb,cc,m1,m2)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2)
      character*(3) cc(m1:m2,m1:m2,m1:m2)
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
         bb(i3,i2,i1)=i3+i2*10+i1*100
         write(cc(i3,i2,i1)(1:1),'(i1)') i3
         write(cc(i3,i2,i1)(2:2),'(i1)') i2
         write(cc(i3,i2,i1)(3:3),'(i1)') i1
         do i4=m1,m2
         do i5=m1,m2
         do i6=m1,m2
         aa(i6,i5,i4)%bb(i3,i2,i1)=
     1            i6+i5*10+i4*100+i3*1000+i2*10000+i1*100000
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(1:1),'(i1)') i6
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(2:2),'(i1)') i5
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(3:3),'(i1)') i4
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(4:4),'(i1)') i3
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(5:5),'(i1)') i2
         write(aa(i6,i5,i4)%cc(i3,i2,i1)(6:6),'(i1)') i1
         end do
         end do
         end do
      end do
      end do
      end do
      end
      subroutine sk1(ia,ib,ic,m1,m2)
      pointer (ia,aa),(ib,bb),(ic,cc)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2),tmp_bb(2,2,2),tmp_bbb(2,2,2,2)
      character*(3) cc(m1:m2,m1:m2,m1:m2),tmp_cc(2,2,2)
      character*(6) tmp_ccc(2,2,2,2),tmp_c
      open (11,delim='quote')
      open (12,delim='quote')
      open (13,delim='quote')
      open (14,delim='quote')
      write(11,*) bb(1,1,1),bb(2,1,1),bb(1,2,1),bb(2,2,1),
     1            bb(1,1,2),bb(2,1,2),bb(1,2,2),bb(2,2,2)
      rewind 11
      read (11,*) tmp_bb
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
         if (bb(i3,i2,i1)/=i3+i2*10+i1*100)call err(11,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      write(12,*) cc(1,1,1),cc(2,1,1),cc(1,2,1),cc(2,2,1),
     1            cc(1,1,2),cc(2,1,2),cc(1,2,2),cc(2,2,2)
      rewind 12
      read (12,*) tmp_cc
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
        write(tmp_c(1:1),'(i1)') i3
        write(tmp_c(2:2),'(i1)') i2
        write(tmp_c(3:3),'(i1)') i1
        if (tmp_cc(i3,i2,i1)/=tmp_c(1:3))call err(12,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      write(13,*) 
     1 aa(1,1,1)%bb(1,1,1),aa(1,1,1)%bb(1,1,2),
     1 aa(1,1,1)%bb(1,2,1),aa(1,1,1)%bb(1,2,2),
     1 aa(1,1,1)%bb(2,1,1),aa(1,1,1)%bb(2,1,2),
     1 aa(1,1,1)%bb(2,2,1),aa(1,1,1)%bb(2,2,2),
     1 aa(2,2,2)%bb(1,1,1),aa(2,2,2)%bb(1,1,2),
     1 aa(2,2,2)%bb(1,2,1),aa(2,2,2)%bb(1,2,2),
     1 aa(2,2,2)%bb(2,1,1),aa(2,2,2)%bb(2,1,2),
     1 aa(2,2,2)%bb(2,2,1),aa(2,2,2)%bb(2,2,2)
       rewind 13
       read(13,*) tmp_bbb
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
      do i4=m1,m2
         if(tmp_bbb(i4,i3,i2,i1)/=
     1            i1+i1*10+i1*100+i2*1000+i3*10000+i4*100000)
     1      call err(13,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      end do
      write(14,*) 
     1 aa(1,1,1)%cc(1,1,1),aa(1,1,1)%cc(1,1,2),
     1 aa(1,1,1)%cc(1,2,1),aa(1,1,1)%cc(1,2,2),
     1 aa(1,1,1)%cc(2,1,1),aa(1,1,1)%cc(2,1,2),
     1 aa(1,1,1)%cc(2,2,1),aa(1,1,1)%cc(2,2,2),
     1 aa(2,2,2)%cc(1,1,1),aa(2,2,2)%cc(1,1,2),
     1 aa(2,2,2)%cc(1,2,1),aa(2,2,2)%cc(1,2,2),
     1 aa(2,2,2)%cc(2,1,1),aa(2,2,2)%cc(2,1,2),
     1 aa(2,2,2)%cc(2,2,1),aa(2,2,2)%cc(2,2,2)
       rewind 14
       read(14,*) tmp_ccc
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
      do i4=m1,m2
         write(tmp_c(1:1),'(i1)') i1
         write(tmp_c(2:2),'(i1)') i1
         write(tmp_c(3:3),'(i1)') i1
         write(tmp_c(4:4),'(i1)') i2
         write(tmp_c(5:5),'(i1)') i3
         write(tmp_c(6:6),'(i1)') i4
         if (tmp_ccc(i4,i3,i2,i1)/=tmp_c(1:6))
     1                           call err(14,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      end do
      end
      subroutine sk2(ia,ib,ic,m1,m2)
      pointer (ia,aa),(ib,bb),(ic,cc)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2),tmp_bb(2,2,2),tmp_bbb(2,2,2,2)
      character*(3) cc(m1:m2,m1:m2,m1:m2),tmp_cc(2,2,2)
      character*(6) tmp_ccc(2,2,2,2),tmp_c
      open (21,delim='quote')
      open (22,delim='quote')
      open (23,delim='quote')
      open (24,delim='quote')
      k1=1
      k2=2
      write(21,*) bb(k1,k1,k1),bb(k2,k1,k1),bb(k1,k2,k1),bb(k2,k2,k1),
     1            bb(k1,k1,k2),bb(k2,k1,k2),bb(k1,k2,k2),bb(k2,k2,k2)
      rewind 21
      read (21,*) tmp_bb
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
         if (bb(i3,i2,i1)/=i3+i2*10+i1*100)call err(21,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      write(22,*) cc(k1,k1,k1),cc(k2,k1,k1),cc(k1,k2,k1),cc(k2,k2,k1),
     k            cc(k1,k1,k2),cc(k2,k1,k2),cc(k1,k2,k2),cc(k2,k2,k2)
      rewind 22
      read (22,*) tmp_cc
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
        write(tmp_c(1:1),'(i1)') i3
        write(tmp_c(2:2),'(i1)') i2
        write(tmp_c(3:3),'(i1)') i1
        if (tmp_cc(i3,i2,i1)/=tmp_c(1:3))call err(22,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      write(23,*) 
     k aa(k1,k1,k1)%bb(k1,k1,k1),aa(k1,k1,k1)%bb(k1,k1,k2),
     k aa(k1,k1,k1)%bb(k1,k2,k1),aa(k1,k1,k1)%bb(k1,k2,k2),
     k aa(k1,k1,k1)%bb(k2,k1,k1),aa(k1,k1,k1)%bb(k2,k1,k2),
     k aa(k1,k1,k1)%bb(k2,k2,k1),aa(k1,k1,k1)%bb(k2,k2,k2),
     k aa(k2,k2,k2)%bb(k1,k1,k1),aa(k2,k2,k2)%bb(k1,k1,k2),
     k aa(k2,k2,k2)%bb(k1,k2,k1),aa(k2,k2,k2)%bb(k1,k2,k2),
     k aa(k2,k2,k2)%bb(k2,k1,k1),aa(k2,k2,k2)%bb(k2,k1,k2),
     k aa(k2,k2,k2)%bb(k2,k2,k1),aa(k2,k2,k2)%bb(k2,k2,k2)
       rewind 23
       read(23,*) tmp_bbb
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
      do i4=m1,m2
         if(tmp_bbb(i4,i3,i2,i1)/=
     1            i1+i1*10+i1*100+i2*1000+i3*10000+i4*100000)
     1      call err(23,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      end do
      write(24,*) 
     k aa(k1,k1,k1)%cc(k1,k1,k1),aa(k1,k1,k1)%cc(k1,k1,k2),
     k aa(k1,k1,k1)%cc(k1,k2,k1),aa(k1,k1,k1)%cc(k1,k2,k2),
     k aa(k1,k1,k1)%cc(k2,k1,k1),aa(k1,k1,k1)%cc(k2,k1,k2),
     k aa(k1,k1,k1)%cc(k2,k2,k1),aa(k1,k1,k1)%cc(k2,k2,k2),
     k aa(k2,k2,k2)%cc(k1,k1,k1),aa(k2,k2,k2)%cc(k1,k1,k2),
     k aa(k2,k2,k2)%cc(k1,k2,k1),aa(k2,k2,k2)%cc(k1,k2,k2),
     k aa(k2,k2,k2)%cc(k2,k1,k1),aa(k2,k2,k2)%cc(k2,k1,k2),
     k aa(k2,k2,k2)%cc(k2,k2,k1),aa(k2,k2,k2)%cc(k2,k2,k2)
       rewind 24
       read(24,*) tmp_ccc
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
      do i4=m1,m2
         write(tmp_c(1:1),'(i1)') i1
         write(tmp_c(2:2),'(i1)') i1
         write(tmp_c(3:3),'(i1)') i1
         write(tmp_c(4:4),'(i1)') i2
         write(tmp_c(5:5),'(i1)') i3
         write(tmp_c(6:6),'(i1)') i4
         if (tmp_ccc(i4,i3,i2,i1)/=tmp_c(1:6))
     1                           call err(24,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      end do
      end
      subroutine sk3(ia,ib,ic,m1,m2)
      pointer (ia,aa),(ib,bb),(ic,cc)
      type  a 
        sequence
        integer bb(2,2,2)
        character*6 cc(2,2,2)
      end type
      type (a)::  aa(m1:m2,m1:m2,m1:m2)
      integer     bb(m1:m2,m1:m2,m1:m2),tmp_bb(2,2,2),tmp_bbb(2,2,2,2)
      character*(3) cc(m1:m2,m1:m2,m1:m2),tmp_cc(2,2,2)
      character*(6) tmp_ccc(2,2,2,2),tmp_c
      open (31,delim='quote')
      open (32,delim='quote')
      open (33,delim='quote')
      open (34,delim='quote')
      k1=1
      k2=2
      write(31,*) bb(1,1,1),bb(k2,1,1),bb(1,k2,1),bb(k2,k2,1),
     1            bb(1,1,k2),bb(k2,1,k2),bb(1,k2,k2),bb(k2,k2,k2)
      rewind 31
      read (31,*) tmp_bb
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
         if (bb(i3,i2,i1)/=i3+i2*10+i1*100)call err(31,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      write(32,*) cc(k1,k1,k1),cc(2,k1,k1),cc(k1,2,k1),cc(2,2,k1),
     k            cc(k1,k1,2),cc(2,k1,2),cc(k1,2,2),cc(2,2,2)
      rewind 32
      read (32,*) tmp_cc
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
        write(tmp_c(1:1),'(i1)') i3
        write(tmp_c(2:2),'(i1)') i2
        write(tmp_c(3:3),'(i1)') i1
        if (tmp_cc(i3,i2,i1)/=tmp_c(1:3))call err(32,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      write(33,*) 
     k aa(1,1,1)%bb(1,1,1),aa(1,1,1)%bb(1,1,k2),
     k aa(1,1,1)%bb(1,k2,1),aa(1,1,1)%bb(1,k2,k2),
     k aa(1,1,1)%bb(k2,1,1),aa(1,1,1)%bb(k2,1,k2),
     k aa(1,1,1)%bb(k2,k2,1),aa(1,1,1)%bb(k2,k2,k2),
     k aa(k2,k2,k2)%bb(1,1,1),aa(k2,k2,k2)%bb(1,1,k2),
     k aa(k2,k2,k2)%bb(1,k2,1),aa(k2,k2,k2)%bb(1,k2,k2),
     k aa(k2,k2,k2)%bb(k2,1,1),aa(k2,k2,k2)%bb(k2,1,k2),
     k aa(k2,k2,k2)%bb(k2,k2,1),aa(k2,k2,k2)%bb(k2,k2,k2)
       rewind 33
       read(33,*) tmp_bbb
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
      do i4=m1,m2
         if(tmp_bbb(i4,i3,i2,i1)/=
     1            i1+i1*10+i1*100+i2*1000+i3*10000+i4*100000)
     1      call err(33,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      end do
      write(34,*) 
     k aa(k1,k1,k1)%cc(k1,k1,k1),aa(k1,k1,k1)%cc(k1,k1,2),
     k aa(k1,k1,k1)%cc(k1,2,k1),aa(k1,k1,k1)%cc(k1,2,2),
     k aa(k1,k1,k1)%cc(2,k1,k1),aa(k1,k1,k1)%cc(2,k1,2),
     k aa(k1,k1,k1)%cc(2,2,k1),aa(k1,k1,k1)%cc(2,2,2),
     k aa(2,2,2)%cc(k1,k1,k1),aa(2,2,2)%cc(k1,k1,2),
     k aa(2,2,2)%cc(k1,2,k1),aa(2,2,2)%cc(k1,2,2),
     k aa(2,2,2)%cc(2,k1,k1),aa(2,2,2)%cc(2,k1,2),
     k aa(2,2,2)%cc(2,2,k1),aa(2,2,2)%cc(2,2,2)
       rewind 34
       read(34,*) tmp_ccc
      do i1=m1,m2
      do i2=m1,m2
      do i3=m1,m2
      do i4=m1,m2
         write(tmp_c(1:1),'(i1)') i1
         write(tmp_c(2:2),'(i1)') i1
         write(tmp_c(3:3),'(i1)') i1
         write(tmp_c(4:4),'(i1)') i2
         write(tmp_c(5:5),'(i1)') i3
         write(tmp_c(6:6),'(i1)') i4
         if (tmp_ccc(i4,i3,i2,i1)/=tmp_c(1:6))
     1                           call err(24,i3,i2,i1,0,0,0)
      end do
      end do
      end do
      end do
      end
