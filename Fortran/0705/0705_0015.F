      call s0
      call s1
      call s2
      print *,'pass'
      end
      subroutine err(i,j)
      print *,'fail'
      print *,'error code :',i,j
      end
      subroutine s0
      save
      parameter (i=1,j=2,m=0)
      real*8  a12(0:2,0:2),a13(m:j,m:j)
      real*8       h12(0:2,0:2),h13(m:j,m:j)
      logical*4                 w12(0:2,0:2),w13(m:j,m:j)
      logical*1         e12(0:2,0:2),e13(m:j,m:j)
      structure /x_type/
        real*8 a1(0:2,0:2)
      end structure
      record /x_type/     x12
      record /x_type/              z12(0:2,0:2),z13(m:j,m:j)
      call  t1(loc(a12),loc(a13),loc(h12),loc(h13),loc(x12),loc(z12),
     1         loc(z13),loc(w12),loc(w13),loc(e12),loc(e13),i,j,m,
     1 (5.0_8))
      end
      subroutine s1
      save
      parameter (i=1,j=2,m=0)
      real*8  a12(0:2,0:2),a13(m:j,m:j)
      real*8       h12(0:2,0:2),h13(m:j,m:j)
      logical*4                 w12(0:2,0:2),w13(m:j,m:j)
      logical*1         e12(0:2,0:2),e13(m:j,m:j)
      structure /x_type/
        real*8 a1(0:2,0:2)
      end structure
      record /x_type/     x12
      record /x_type/              z12(0:2,0:2),z13(m:j,m:j)
      call  t2(loc(a12),loc(a13),loc(h12),loc(h13),loc(x12),loc(z12),
     1         loc(z13),loc(w12),loc(w13),loc(e12),loc(e13),i,j,m,
     1 5.0_8)
      end
      subroutine s2
      save
      parameter (i=1,j=2,m=0)
      real*8  a12(0:2,0:2),a13(m:j,m:j)
      real*8       h12(0:2,0:2),h13(m:j,m:j)
      logical*4                 w12(0:2,0:2),w13(m:j,m:j)
      logical*1         e12(0:2,0:2),e13(m:j,m:j)
      structure /x_type/
        real*8 a1(0:2,0:2)
      end structure
      record /x_type/     x12
      record /x_type/              z12(0:2,0:2),z13(m:j,m:j)
      call  t3(loc(a12),loc(a13),loc(h12),loc(h13),loc(x12),loc(z12),
     1         loc(z13),loc(w12),loc(w13),loc(e12),loc(e13),i,j,m,
     1 5.0_8)
      end
      subroutine set_v(c,m,j,id)
      real*8   c(m:j,m:*)
      real*8   mx(7)/(10,10),(3,3),0,(1,1),(4,4),(2,2),(5,5)/
      mc=mod(id,7)
      if (mc==0) mc=7
      c(m,:j)=mx(mc)
      mc=mc+1
      if (mc>7)mc=1
      c(1,:j)=mx(mc)
      mc=mc+1
      if (mc>7)mc=1
      c(2,:j)=mx(mc)
      mc=mc+1
      if (mc>7)mc=1
      c(0,1)=mx(mc)
      mc=mc+1
      if (mc>7)mc=1
      c(0,j)=mx(mc)
      mc=mc+1
      if (mc>7)mc=1
      c(1,m)=mx(mc)
      mc=mc+1
      if (mc>7)mc=1
      c(2,m)=mx(mc)
      end
      subroutine t1(ia12,ia13,ih12,ih13,ix12,iz12,iz13,iw12,iw13,
     1  ie12,ie13, i,j,m,y)
      save
      pointer (ia11,a11),(ia12,a12),(ia13,a13)
      pointer            (ih12,h12),(ih13,h13)
      pointer (iw11,w11),(iw12,w12),(iw13,w13)
      pointer (ie11,e11),(ie12,e12),(ie13,e13)
      pointer (ix11,x11),(ix12,x12)
      pointer (iz11,z11),(iz12,z12),(iz13,z13)
      real*8 a11(0:2,0:2),a12(0:2,0:2),a13(m:j,m:j),a14(:,:)
      real*8 h12(0:2,0:2),h13(m:j,m:j),y
      logical*4    w11(0:2,0:2),w12(0:2,0:2),w13(m:j,m:j),w14(:,:)
      logical*1    e11(0:2,0:2),e12(0:2,0:2),e13(m:j,m:j),e14(:,:)
      allocatable a14,z14,w14,e14
      structure /x_type/
        real*8 f1(0:2,0:2)
      end structure
      record /x_type/ x11,x12
      record /x_type/ z11(0:2,0:2),z12(0:2,0:2),z13(m:j,m:j),z14(:,:)
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
        integer*8 malloc
        integer,parameter::zzp=8
      ia11 = malloc(8*9_zzp)
      iw11 = malloc(4*9_zzp)
      ie11 = malloc(1*9_zzp)
      ix11 = malloc(8*9_zzp)
      iz11 = malloc(8*9*9_zzp)
      allocate (z14(m:j,m:j),a14(m:j,m:j),w14(m:2,m:2),e14(m:j,m:j))
      call set_v(a11     ,m,j,1)
      call set_v(a12  ,m,j,2)
      call set_v(a13(j-2,m),m,j,3)
      call set_v(a14(0  ,m),m,j,4)
      call set_v(h12(0,m)  ,m,j,5)
      call set_v(h13(j-2,j-2),m,j,6)
      call set_v( x11.f1(m,m),m,j,7)
      call set_v( x12.f1(m,0),m,j,8)
      do k1=0,2
      do k2=0,2
        call set_v( z11(k1,k2).f1(0,m) , m, j ,9)
        call set_v( z12(k1,k2).f1(m,j) , m, j ,10)
        call set_v( z13(k1,k2).f1(min(k1,m),min(m,k2)) , m, j ,11)
        call set_v( z14(max(k1,m),k2).f1(min(k1,j-2),min(m,k2)),m,j,12)
      end do
      end do
      w11=z14(m,m).f1.ge.z13(m,m).f1
      call s_chk_l4(w11,z14(m,m).f1,z13(m,m).f1,ge,
     1      001,0,2,0,2,0,2,1,0,2,1)
      e11=z14(m,m).f1.ge.z13(m,m).f1
      call s_chk_l1( e11,z14(m,m).f1,z13(m,m).f1,ge,
     1 002,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(z14(m,m).f1.ge.z13(m,m).f1,
     1z14(m,m).f1,z13(m,m).f1,ge,003,0,2,0,2,0,2,1,0,2,1)
      w11(:,:)=z14(m,m).f1.lt.z13(m,m).f1
      call s_chk_l4(w11,z14(m,m).f1,z13(m,m).f1,lt,
     1 004,0,2,0,2,0,2,1,0,2,1)
      e11(:,:)=z14(m,m).f1.lt.z13(m,m).f1
      call s_chk_l1( e11,z14(m,m).f1,z13(m,m).f1,lt,
     1    005,0,2,0,2,0,2,1,0,2,1)
      w11(m:j,m:j)=z14(m,m).f1.gt.z13(m,m).f1
      call s_chk_l4(w11,z14(m,m).f1,z13(m,m).f1,gt,006  
     1     ,0,2,0,2,0,2,1,0,2,1)
      e11(m:j,m:j)=z14(m,m).f1.gt.z13(m,m).f1
      call s_chk_l1( e11,z14(m,m).f1,z13(m,m).f1,
     1 gt,007,0,2,0,2,0,2,1,0,2,1)
      w11(m:j:j,m:j:j)=z14(m,m).f1(m:j:j,m:j:j)
     1 .ge.z13(m,m).f1(m:j:j,m:j:j)
      call s_chk_l4(w11,z14(m,m).f1,z13(m,m).f1,ge,
     1 008,0,2,0,2,0,2,j,0,2,j)
      e11(m:j:j,m:j:j)=z14(m,m).f1(m:j:j,m:j:j).eq.
     1 z13(m,m).f1(m:j:j,m:j:j)
      call s_chk_l1( e11,z14(m,m).f1,z13(m,m).f1,eq,
     1  009,0,2,0,2,0,2,j,0,2,j)
      call s_chk_l4(z14(m,m).f1(m:j:i,m:j:i).ge.
     1 z13(m,m).f1(m:j:i,m:j:i),
     1 z14(m,m).f1,z13(m,m).f1,ge,010,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(z14(m,m).f1(m:j:i,m:j:i).ne.
     1    z13(m,m).f1(m:j:i,m:j:i),
     1      z14(m,m).f1,z13(m,m).f1,ne,011,0,2,0,2,0,2,1,0,2,1)
      w11(:,:)=z14(m,m).f1(:,:).lt.z13(m,m).f1(:,:)
      call s_chk_l4(w11,z14(m,m).f1,z13(m,m).f1,
     1   lt,012,0,2,0,2,0,2,1,0,2,1)
      e11(:,:)=z14(m,m).f1(:,:).lt.z13(m,m).f1(:,:)
      call s_chk_l1(e11,z14(m,m).f1,z13(m,m).f1,
     1  lt,013,0,2,0,2,0,2,1,0,2,1)
      w11(m:j,m:j)=z14(m,m).f1(m:j:i,m:j).gt.z13(m,m).f1(m:j,m:j:i)
      call s_chk_l4(w11,z14(m,m).f1,z13(m,m).f1,gt,014,
     1 0,2,0,2,0,2,1,0,2,1)
      e11(m:j,m:j)=z14(m,m).f1(m:j,m:j).gt.z13(m,m).f1(m:j:i,m:j)
      call s_chk_l1(   e11,z14(m,m).f1,z13(m,m).f1,
     1 gt,015,0,2,0,2,0,2,1,0,2,1)
      w11(j,:)=z14(m,m).f1(j,:).lt.z13(m,m).f1(j,:)
      call s_chk_l4(w11(m,m),z14(m,m).f1,z13(m,m).f1,
     1  lt,016,0,2,0,2,j,2,j,0,2,1)
      e11(j,:)=z14(m,m).f1(j,:).lt.z13(m,m).f1(j,:)
      call s_chk_l1(e11(m,m),z14(m,m).f1,
     1 z13(m,m).f1,lt,017,0,2,0,2,j,2,j,0,2,1)
      w11(j,m:j)=z14(m,m).f1(j,m:j).gt.z13(m,m).f1(j,m:j:i)
      call s_chk_l4(w11(m,m),z14(m,m).f1,z13(m,m).f1,
     1gt,018,0,2,0,2,j,2,j,0,2,1)
      e11(j,m:j)=z14(m,m).f1(j,m:j).gt.z13(m,m).f1(j,m:j)
      call s_chk_l1(e11(m,m),z14(m,m).f1,
     1 z13(m,m).f1,gt,019,0,2,0,2,j,2,j,0,2,1)
      w11(:,j)=z14(m,m).f1(:,j).le.z13(m,m).f1(:,j)
      call s_chk_l4(w11(m,m),z14(m,m).f1,z13(m,m).f1,
     1 le,020,0,2,0,2,0,2,1,j,2,1)
      e11(:,j)=z14(m,m).f1(:,j).le.z13(m,m).f1(:,j)
      call s_chk_l1(e11(m,m),z14(m,m).f1,z13(m,m).f1,
     1 le,021,0,2,0,2,0,2,1,j,2,1)
      w11(m:j,j)=z14(m,m).f1(m:j,j).le.z13(m,m).f1(m:j:i,j)
      call s_chk_l4(w11(m,m),z14(m,m).f1,z13(m,m).f1,
     1le,022,0,2,0,2,0,2,1,j,2,1)
      e11(m:j,j)=z14(m,m).f1(m:j,j).le.z13(m,m).f1(m:j,j)
      call s_chk_l1(e11(m,m),z14(m,m).f1,z13(m,m).f1,
     1le,023,0,2,0,2,0,2,1,j,2,1)
      w14=z14(m,m).f1.ge.z12(m,m).f1
      call s_chk_l4(w14,z14(m,m).f1,z12(m,m).f1,
     1 ge,001,0,2,0,2,0,2,1,0,2,1)
      e14=z14(m,m).f1.ge.z12(m,m).f1
      call s_chk_l1(e14,z14(m,m).f1,z12(m,m).f1,
     1 ge,002,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(z14(m,m).f1.ge.
     1 z12(m,m).f1,z14(m,m).f1,z12(m,m).f1,ge,003,0,2,0,2,0,2,1,0,2,1)
      w12(:,:)=z14(m,m).f1.lt.z12(m,m).f1
      call s_chk_l4(w12,z14(m,m).f1,z12(m,m)
     1.f1,lt,004,0,2,0,2,0,2,1,0,2,1)
      e14(:,:)=z14(m,m).f1.lt.z12(m,m).f1
      call s_chk_l1( 
     1      e14,z14(m,m).f1,z12(m,m).f1,lt,005,0,2,0,2,0,2,1,0,2,1)
      w13(m:j,m:j)=z14(m,m).f1.gt.z12(m,m).f1
      call s_chk_l4(
     1 w13,z14(m,m).f1,z12(m,m).f1,gt,006       ,0,2,0,2,0,2,1,0,2,1)
      e13(m:j,m:j)=z14(m,m).f1.gt.z12(m,m).f1
      call s_chk_l1( 
     1      e13,z14(m,m).f1,z12(m,m).f1,gt,007,0,2,0,2,0,2,1,0,2,1)
      w12(m:j:j,m:j:j)=
     1  z14(m,m).f1(m:j:j,m:j:j).ge.z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l4(
     1   w12,z14(m,m).f1,z12(m,m).f1,ge,008,0,2,0,2,0,2,j,0,2,j)
      e14(m:j:j,m:j:j)=
     1 z14(m,m).f1(m:j:j,m:j:j).eq.z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l1(  
     1     e14,z14(m,m).f1,z12(m,m).f1,eq,009,0,2,0,2,0,2,j,0,2,j)
      call s_chk_l4(
     1z14(m,m).f1(m:j:i,m:j:i).ge.z12(m,m).f1(m:j:i,m:j:i),
     1      z14(m,m).f1,z12(m,m).f1,ge,010,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(
     1z14(m,m).f1(m:j:i,m:j:i).ne.z12(m,m).f1(m:j:i,m:j:i),
     1      z14(m,m).f1,z12(m,m).f1,ne,011,0,2,0,2,0,2,1,0,2,1)
      w14(:,:)=z14(m,m).f1(:,:).lt.z12(m,m).f1(:,:)
      call s_chk_l4(
     1w14,z14(m,m).f1,z12(m,m).f1,lt,012,0,2,0,2,0,2,1,0,2,1)
      e13(:,:)=z14(m,m).f1(:,:).lt.z12(m,m).f1(:,:)
      call s_chk_l1(  
     1     e13,z14(m,m).f1,z12(m,m).f1,lt,013,0,2,0,2,0,2,1,0,2,1)
      w14(m:j,m:j)=z14(m,m).f1(m:j:i,m:j).gt.z12(m,m).f1(m:j,m:j:i)
      call s_chk_l4(
     1  w14,z14(m,m).f1,z12(m,m).f1,gt,014       ,0,2,0,2,0,2,1,0,2,1)
      e14(m:j,m:j)=z14(m,m).f1(m:j,m:j).gt.z12(m,m).f1(m:j:i,m:j)
      call s_chk_l1(  
     1     e14,z14(m,m).f1,z12(m,m).f1,gt,015,0,2,0,2,0,2,1,0,2,1)
      w13(j,:)=z14(m,m).f1(j,:).lt.z12(m,m).f1(j,:)
      call s_chk_l4(
     1 w13(m,m),z14(m,m).f1,z12(m,m).f1,lt,016,0,2,0,2,j,2,j,0,2,1)
      e12(j,:)=z14(m,m).f1(j,:).lt.z12(m,m).f1(j,:)
      end
      subroutine t2(ia12,ia13,ih12,ih13,ix12,iz12,iz13,iw12,iw13,
     1  ie12,ie13, i,j,m,y)
      save
      pointer (ia11,a11),(ia12,a12),(ia13,a13)
      pointer            (ih12,h12),(ih13,h13)
      pointer (iw11,w11),(iw12,w12),(iw13,w13)
      pointer (ie11,e11),(ie12,e12),(ie13,e13)
      pointer (ix11,x11),(ix12,x12)
      pointer (iz11,z11),(iz12,z12),(iz13,z13)
      real*8 a11(0:2,0:2),a12(0:2,0:2),a13(m:j,m:j),a14(:,:)
      real*8 h12(0:2,0:2),h13(m:j,m:j),y
      logical*4    w11(0:2,0:2),w12(0:2,0:2),w13(m:j,m:j),w14(:,:)
      logical*1    e11(0:2,0:2),e12(0:2,0:2),e13(m:j,m:j),e14(:,:)
      allocatable a14,z14,w14,e14
      structure /x_type/
        real*8 f1(0:2,0:2)
      end structure
      record /x_type/ x11,x12
      record /x_type/ z11(0:2,0:2),z12(0:2,0:2),z13(m:j,m:j),z14(:,:)
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
        integer*8 malloc
        integer,parameter::zzp=8
      ia11 = malloc(8*9_zzp)
      iw11 = malloc(4*9_zzp)
      ie11 = malloc(1*9_zzp)
      ix11 = malloc(8*9_zzp)
      iz11 = malloc(8*9*9_zzp)
      allocate (z14(m:j,m:j),a14(m:j,m:j),w14(m:2,m:2),e14(m:j,m:j))
      call set_v(a11     ,m,j,1)
      call set_v(a12  ,m,j,2)
      call set_v(a13(j-2,m),m,j,3)
      call set_v(a14(0  ,m),m,j,4)
      call set_v(h12(0,m)  ,m,j,5)
      call set_v(h13(j-2,j-2),m,j,6)
      call set_v( x11.f1(m,m),m,j,7)
      call set_v( x12.f1(m,0),m,j,8)
      do k1=0,2
      do k2=0,2
        call set_v( z11(k1,k2).f1(0,m) , m, j ,9)
        call set_v( z12(k1,k2).f1(m,j) , m, j ,10)
        call set_v( z13(k1,k2).f1(min(k1,m),min(m,k2)) , m, j ,11)
        call set_v( z14(max(k1,m),k2).f1(min(k1,j-2),min(m,k2)),m,j,12)
      end do
      end do
      call s_chk_l1(
     1 e12(m,m),z14(m,m).f1,z12(m,m).f1,lt,017,0,2,0,2,j,2,j,0,2,1)
      w14(j,m:j)=z14(m,m).f1(j,m:j).gt.z12(m,m).f1(j,m:j:i)
      call s_chk_l4(
     1 w14(m,m),z14(m,m).f1,z12(m,m).f1,gt,018,0,2,0,2,j,2,j,0,2,1)
      e14(j,m:j)=z14(m,m).f1(j,m:j).gt.z12(m,m).f1(j,m:j)
      call s_chk_l1(
     1 e14(m,m),z14(m,m).f1,z12(m,m).f1,gt,019,0,2,0,2,j,2,j,0,2,1)
      w12(:,j)=z14(m,m).f1(:,j).le.z12(m,m).f1(:,j)
      call s_chk_l4(
     1 w12(m,m),z14(m,m).f1,z12(m,m).f1,le,020,0,2,0,2,0,2,1,j,2,1)
      e13(:,j)=z14(m,m).f1(:,j).le.z12(m,m).f1(:,j)
      call s_chk_l1(
     1 e13(m,m),z14(m,m).f1,z12(m,m).f1,le,021,0,2,0,2,0,2,1,j,2,1)
      w13(m:j,j)=z14(m,m).f1(m:j,j).le.z12(m,m).f1(m:j:i,j)
      call s_chk_l4(
     1 w13(m,m),z14(m,m).f1,z12(m,m).f1,le,022,0,2,0,2,0,2,1,j,2,1)
      e12(m:j,j)=z14(m,m).f1(m:j,j).le.z12(m,m).f1(m:j,j)
      call s_chk_l1(
     1 e12(m,m),z14(m,m).f1,z12(m,m).f1,le,023,0,2,0,2,0,2,1,j,2,1)
      w14=h12.ge.z11(m,m).f1
      call s_chk_l4(w14,h12,z11(m,m).f1,ge,001,0,2,0,2,0,2,1,0,2,1)
      e14=h12.ge.z12(m,m).f1
      call s_chk_l1( e14,h12,z12(m,m).f1,ge,002,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(
     1 h12.ge.z12(m,m).f1,h12,z12(m,m).f1,ge,003,0,2,0,2,0,2,1,0,2,1)
      w12(:,:)=h12.lt.z12(m,m).f1
      call s_chk_l4(w12,h12,z12(m,m).f1,lt,004,0,2,0,2,0,2,1,0,2,1)
      e14(:,:)=h12.lt.z12(m,m).f1
      call s_chk_l1(e14,h12,z12(m,m).f1,lt,005,0,2,0,2,0,2,1,0,2,1)
      w13(m:j,m:j)=h12.gt.z12(m,m).f1
      call s_chk_l4(w13,h12,z12(m,m).f1,gt,006,0,2,0,2,0,2,1,0,2,1)
      e13(m:j,m:j)=h12.gt.z12(m,m).f1
      call s_chk_l1( e13,h12,z12(m,m).f1,gt,007,0,2,0,2,0,2,1,0,2,1)
      w12(m:j:j,m:j:j)=h12(m:j:j,m:j:j).ge.z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l4(w12,h12,z12(m,m).f1,ge,008,0,2,0,2,0,2,j,0,2,j)
      e14(m:j:j,m:j:j)=h12(m:j:j,m:j:j).eq.z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l1( e14,h12,z12(m,m).f1,eq,009,0,2,0,2,0,2,j,0,2,j)
      call s_chk_l4(h12(m:j:i,m:j:i).ge.z12(m,m).f1(m:j:i,m:j:i),
     1      h12,z12(m,m).f1,ge,010,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(h12(m:j:i,m:j:i).ne.z12(m,m).f1(m:j:i,m:j:i),
     1      h12,z12(m,m).f1,ne,011,0,2,0,2,0,2,1,0,2,1)
      w14(:,:)=h12(:,:).lt.h13(:,:)
      call s_chk_l4(w14,h12,h13,lt,012,0,2,0,2,0,2,1,0,2,1)
      e13(:,:)=h12(:,:).lt.z12(m,m).f1(:,:)
      call s_chk_l1(e13,h12,z12(m,m).f1,lt,013,0,2,0,2,0,2,1,0,2,1)
      w14(m:j,m:j)=h12(m:j:i,m:j).gt.h13(m:j,m:j:i)
      call s_chk_l4(w14,h12,h13,gt,014       ,0,2,0,2,0,2,1,0,2,1)
      e14(m:j,m:j)=h13(m:j,m:j).gt.h12(m:j:i,m:j)
      call s_chk_l1(   e14,h13,h12,gt,015,0,2,0,2,0,2,1,0,2,1)
      w13(j,:)=h13(j,:).lt.h12(j,:)
      call s_chk_l4(w13(m,m),h13,h12,lt,016,0,2,0,2,j,2,j,0,2,1)
      e12(j,:)=h13(j,:).lt.h12(j,:)
      call s_chk_l1(e12(m,m),h13,h12,lt,017,0,2,0,2,j,2,j,0,2,1)
      w14(j,m:j)=h12(j,m:j).gt.h13(j,m:j:i)
      call s_chk_l4(w14(m,m),h12,h13,gt,018,0,2,0,2,j,2,j,0,2,1)
      e14(j,m:j)=h13(j,m:j).gt.h12(j,m:j)
      call s_chk_l1(e14(m,m),h13,h12,gt,019,0,2,0,2,j,2,j,0,2,1)
      w12(:,j)=h12(:,j).le.h13(:,j)
      call s_chk_l4(w12(m,m),h12,h13,le,020,0,2,0,2,0,2,1,j,2,1)
      e13(:,j)=h13(:,j).le.h12(:,j)
      call s_chk_l1(e13(m,m),h13,h12,le,021,0,2,0,2,0,2,1,j,2,1)
      w13(m:j,j)=x12.f1(m:j,j).le.h13(m:j:i,j)
      call s_chk_l4(w13(m,m),x12.f1,h13,le,022,0,2,0,2,0,2,1,j,2,1)
      e12(m:j,j)=h13(m:j,j).le.x12.f1(m:j,j)
      call s_chk_l1(e12(m,m),h13,x12.f1,le,023,0,2,0,2,0,2,1,j,2,1)
      w11=y+z14(m,m).f1.ge.y+z13(m,m).f1
      call s_chk_l4(
     1 w11,y+z14(m,m).f1,y+z13(m,m).f1,ge,001,0,2,0,2,0,2,1,0,2,1)
      e11=y+z14(m,m).f1.ge.y+z13(m,m).f1
      call s_chk_l1( 
     1 e11,y+z14(m,m).f1,y+z13(m,m).f1,ge,002,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(y+z14(m,m).f1.ge.y+
     1z13(m,m).f1,z14(m,m).f1,z13(m,m).f1,ge,003,0,2,0,2,0,2,1,0,2,1)
      w11(:,:)=y+z14(m,m).f1.lt.y+z13(m,m).f1
      call s_chk_l4(w11,y+z14(m,m).f1,y+
     1 z13(m,m).f1,lt,004,0,2,0,2,0,2,1,0,2,1)
      e11(:,:)=y+z14(m,m).f1.lt.y+z13(m,m).f1
      call s_chk_l1( e11,y+z14(m,m).f1,
     1 y+z13(m,m).f1,lt,005,0,2,0,2,0,2,1,0,2,1)
      w11(m:j,m:j)=y+z14(m,m).f1.gt.y+z13(m,m).f1
      call s_chk_l4(w11,y+z14(m,m).f1,
     1 y+z13(m,m).f1,gt,006 ,0,2,0,2,0,2,1,0,2,1)
      e11(m:j,m:j)=y+z14(m,m).f1.gt.y+z13(m,m).f1
      call s_chk_l1( e11,y+z14(m,m).f1,
     1 y+z13(m,m).f1,gt,007,0,2,0,2,0,2,1,0,2,1)
      w11(m:j:j,m:j:j)=y+z14(m,m).f1(m:j:j,m:j:j)
     1 .ge.y+z13(m,m).f1(m:j:j,m:j:j)
      call s_chk_l4(w11,y+z14(m,m).f1,
     1 y+z13(m,m).f1,ge,008,0,2,0,2,0,2,j,0,2,j)
      e11(m:j:j,m:j:j)=y+z14(m,m).f1(m:j:j,m:j:j)
     1 .eq.y+z13(m,m).f1(m:j:j,m:j:j)
      call s_chk_l1(e11,y+z14(m,m).f1,
     1 y+z13(m,m).f1,eq,009,0,2,0,2,0,2,j,0,2,j)
      call s_chk_l4(y+z14(m,m).f1(m:j:i,m:j:i)
     1 .ge.y+z13(m,m).f1(m:j:i,m:j:i),
     1     y+z14(m,m).f1,y+z13(m,m).f1,ge,010,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(
     1 y+z14(m,m).f1(m:j:i,m:j:i).ne.y+z13(m,m).f1(m:j:i,m:j:i),
     1   y+z14(m,m).f1,y+z13(m,m).f1,ne,011,0,2,0,2,0,2,1,0,2,1)
      w11(:,:)=y+z14(m,m).f1(:,:).lt.y+z13(m,m).f1(:,:)
      call s_chk_l4(
     1 w11,y+z14(m,m).f1,y+z13(m,m).f1,lt,012,0,2,0,2,0,2,1,0,2,1)
      e11(:,:)=y+z14(m,m).f1(:,:).lt.y+z13(m,m).f1(:,:)
      call s_chk_l1( 
     1 e11,y+z14(m,m).f1,y+z13(m,m).f1,lt,013,0,2,0,2,0,2,1,0,2,1)
      w11(m:j,m:j)=
     1 y+z14(m,m).f1(m:j:i,m:j).gt.y+z13(m,m).f1(m:j,m:j:i)
      call s_chk_l4(
     1 w11,y+z14(m,m).f1,y+z13(m,m).f1,gt,014,0,2,0,2,0,2,1,0,2,1)
      e11(m:j,m:j)=y+z14(m,m).f1(m:j,m:j).gt.y+z13(m,m).f1(m:j:i,m:j)
      call s_chk_l1(
     1 e11,y+z14(m,m).f1,y+z13(m,m).f1,gt,015,0,2,0,2,0,2,1,0,2,1)
      w11(j,:)=y+z14(m,m).f1(j,:).lt.y+z13(m,m).f1(j,:)
      call s_chk_l4(
     1 w11(m,m),y+z14(m,m).f1,
     1 y+z13(m,m).f1,lt,016,0,2,0,2,j,2,j,0,2,1)
      e11(j,:)=y+z14(m,m).f1(j,:).lt.y+z13(m,m).f1(j,:)
      call s_chk_l1(e11(m,m),
     1 y+z14(m,m).f1,y+z13(m,m).f1,lt,017,0,2,0,2,j,2,j,0,2,1)
      w11(j,m:j)=y+z14(m,m).f1(j,m:j).gt.y+z13(m,m).f1(j,m:j:i)
      call s_chk_l4(
     1w11(m,m),y+z14(m,m).f1,y+z13(m,m).f1,gt,018,0,2,0,2,j,2,j,0,2,1)
      e11(j,m:j)=y+z14(m,m).f1(j,m:j).gt.y+z13(m,m).f1(j,m:j)
      call s_chk_l1(e11(m,m),
     1y+z14(m,m).f1,y+z13(m,m).f1,gt,019,0,2,0,2,j,2,j,0,2,1)
      w11(:,j)=y+z14(m,m).f1(:,j).le.y+z13(m,m).f1(:,j)
      call s_chk_l4(w11(m,m),
     1 y+z14(m,m).f1,y+z13(m,m).f1,le,020,0,2,0,2,0,2,1,j,2,1)
      e11(:,j)=y+z14(m,m).f1(:,j).le.y+z13(m,m).f1(:,j)
      call s_chk_l1(e11(m,m),
     1 y+z14(m,m).f1,y+z13(m,m).f1,le,021,0,2,0,2,0,2,1,j,2,1)
      w11(m:j,j)=y+z14(m,m).f1(m:j,j).le.y+z13(m,m).f1(m:j:i,j)
      call s_chk_l4(w11(m,m),
     1 y+z14(m,m).f1,y+z13(m,m).f1,le,022,0,2,0,2,0,2,1,j,2,1)
      e11(m:j,j)=y+z14(m,m).f1(m:j,j).le.y+z13(m,m).f1(m:j,j)
      call s_chk_l1(e11(m,m),
     1 y+z14(m,m).f1,y+z13(m,m).f1,le,023,0,2,0,2,0,2,1,j,2,1)
      w14=y+z14(m,m).f1.ge.y+z12(m,m).f1
      call s_chk_l4(w14,
     1 y+z14(m,m).f1,y+z12(m,m).f1,ge,001,0,2,0,2,0,2,1,0,2,1)
      e14=y+z14(m,m).f1.ge.y+z12(m,m).f1
      call s_chk_l1( e14,
     1 y+z14(m,m).f1,y+z12(m,m).f1,ge,002,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(y+z14(m,m).f1.ge.
     1 y+z12(m,m).f1,
     1z14(m,m).f1,z12(m,m).f1,ge,003,0,2,0,2,0,2,1,0,2,1)
      w12(:,:)=y+z14(m,m).f1.lt.y+z12(m,m).f1
      call s_chk_l4(w12,
     1y+z14(m,m).f1,y+z12(m,m).f1,lt,004,0,2,0,2,0,2,1,0,2,1)
      e14(:,:)=y+z14(m,m).f1.lt.y+z12(m,m).f1
      call s_chk_l1(e14,y+z14(m,m).f1,
     1 y+z12(m,m).f1,lt,005,0,2,0,2,0,2,1,0,2,1)
      w13(m:j,m:j)=y+z14(m,m).f1.gt.y+z12(m,m).f1
      call s_chk_l4(w13,y+z14(m,m).f1,
     1 y+z12(m,m).f1,gt,006,0,2,0,2,0,2,1,0,2,1)
      e13(m:j,m:j)=y+z14(m,m).f1.gt.y+z12(m,m).f1
      call s_chk_l1(e13,y+z14(m,m).f1,
     1 y+z12(m,m).f1,gt,007,0,2,0,2,0,2,1,0,2,1)
      w12(m:j:j,m:j:j)=
     1 y+z14(m,m).f1(m:j:j,m:j:j).ge.y+z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l4(w12,
     1 y+z14(m,m).f1,y+z12(m,m).f1,ge,008,0,2,0,2,0,2,j,0,2,j)
      end
      subroutine t3(ia12,ia13,ih12,ih13,ix12,iz12,iz13,iw12,iw13,
     1  ie12,ie13, i,j,m,y)
      pointer (ia11,a11),(ia12,a12),(ia13,a13)
      pointer            (ih12,h12),(ih13,h13)
      pointer (iw11,w11),(iw12,w12),(iw13,w13)
      pointer (ie11,e11),(ie12,e12),(ie13,e13)
      pointer (ix11,x11),(ix12,x12)
      pointer (iz11,z11),(iz12,z12),(iz13,z13)
      real*8 a11(0:2,0:2),a12(0:2,0:2),a13(m:j,m:j),a14(:,:)
      real*8 h12(0:2,0:2),h13(m:j,m:j),y
      logical*4    w11(0:2,0:2),w12(0:2,0:2),w13(m:j,m:j),w14(:,:)
      logical*1    e11(0:2,0:2),e12(0:2,0:2),e13(m:j,m:j),e14(:,:)
      allocatable a14,z14,w14,e14
      structure /x_type/
        real*8 f1(0:2,0:2)
      end structure
      record /x_type/ x11,x12
      record /x_type/ z11(0:2,0:2),z12(0:2,0:2),z13(m:j,m:j),z14(:,:)
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
        integer*8 malloc
        integer,parameter::zzp=8
      ia11 = malloc(8*9_zzp)
      iw11 = malloc(4*9_zzp)
      ie11 = malloc(1*9_zzp)
      ix11 = malloc(8*9_zzp)
      iz11 = malloc(8*9*9_zzp)
      allocate (z14(m:j,m:j),a14(m:j,m:j),w14(m:2,m:2),e14(m:j,m:j))
      call set_v(a11     ,m,j,1)
      call set_v(a12  ,m,j,2)
      call set_v(a13(j-2,m),m,j,3)
      call set_v(a14(0  ,m),m,j,4)
      call set_v(h12(0,m)  ,m,j,5)
      call set_v(h13(j-2,j-2),m,j,6)
      call set_v( x11.f1(m,m),m,j,7)
      call set_v( x12.f1(m,0),m,j,8)
      do k1=0,2
      do k2=0,2
        call set_v( z11(k1,k2).f1(0,m) , m, j ,9)
        call set_v( z12(k1,k2).f1(m,j) , m, j ,10)
        call set_v( z13(k1,k2).f1(min(k1,m),min(m,k2)) , m, j ,11)
        call set_v( z14(max(k1,m),k2).f1(min(k1,j-2),min(m,k2)),m,j,12)
      end do
      end do
      e14(m:j:j,m:j:j)=y+z14(m,m).
     1 f1(m:j:j,m:j:j).eq.y+z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l1( e14,
     1y+z14(m,m).f1,y+z12(m,m).f1,eq,009,0,2,0,2,0,2,j,0,2,j)
      call s_chk_l4(y+z14(m,m).f1(m:j:i,m:j:i)
     1 .ge.y+z12(m,m).f1(m:j:i,m:j:i),
     1  y+z14(m,m).f1,y+z12(m,m).f1,ge,010,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(y+z14(m,m)
     1 .f1(m:j:i,m:j:i).ne.y+z12(m,m).f1(m:j:i,m:j:i),
     1      y+z14(m,m).f1,y+z12(m,m).f1,ne,011,0,2,0,2,0,2,1,0,2,1)
      w14(:,:)=y+z14(m,m).f1(:,:).lt.y+z12(m,m).f1(:,:)
      call s_chk_l4
     1 (w14,y+z14(m,m).f1,y+z12(m,m).f1,lt,012,0,2,0,2,0,2,1,0,2,1)
      e13(:,:)=y+z14(m,m).f1(:,:).lt.y+z12(m,m).f1(:,:)
      call s_chk_l1(e13,
     1 y+z14(m,m).f1,y+z12(m,m).f1,lt,013,0,2,0,2,0,2,1,0,2,1)
      w14(m:j,m:j)=
     1y+z14(m,m).f1(m:j:i,m:j).gt.y+z12(m,m).f1(m:j,m:j:i)
      call s_chk_l4
     1(w14,y+z14(m,m).f1,y+z12(m,m).f1,gt,014 ,0,2,0,2,0,2,1,0,2,1)
      e14(m:j,m:j)=y+z14(m,m).f1(m:j,m:j).gt.y+z12(m,m).f1(m:j:i,m:j)
      call s_chk_l1( e14,y+z14(m,m).f1,y+
     1 z12(m,m).f1,gt,015,0,2,0,2,0,2,1,0,2,1)
      w13(j,:)=y+z14(m,m).f1(j,:).lt.y+z12(m,m).f1(j,:)
      call s_chk_l4(w13(m,m),
     1 y+z14(m,m).f1,y+z12(m,m).f1,lt,016,0,2,0,2,j,2,j,0,2,1)
      e12(j,:)=y+z14(m,m).f1(j,:).lt.y+z12(m,m).f1(j,:)
      call s_chk_l1(e12(m,m),
     1 y+z14(m,m).f1,y+z12(m,m).f1,lt,017,0,2,0,2,j,2,j,0,2,1)
      w14(j,m:j)=y+z14(m,m).f1(j,m:j).gt.y+z12(m,m).f1(j,m:j:i)
      call s_chk_l4(w14(m,m),
     1 y+z14(m,m).f1,y+z12(m,m).f1,gt,018,0,2,0,2,j,2,j,0,2,1)
      e14(j,m:j)=y+z14(m,m).f1(j,m:j).gt.y+z12(m,m).f1(j,m:j)
      call s_chk_l1(e14(m,m),
     1 y+z14(m,m).f1,y+z12(m,m).f1,gt,019,0,2,0,2,j,2,j,0,2,1)
      w12(:,j)=y+z14(m,m).f1(:,j).le.y+z12(m,m).f1(:,j)
      call s_chk_l4(w12(m,m),
     1 y+z14(m,m).f1,y+z12(m,m).f1,le,020,0,2,0,2,0,2,1,j,2,1)
      e13(:,j)=y+z14(m,m).f1(:,j).le.y+z12(m,m).f1(:,j)
      call s_chk_l1(e13(m,m),
     1  y+z14(m,m).f1,y+z12(m,m).f1,le,021,0,2,0,2,0,2,1,j,2,1)
      w13(m:j,j)=y+z14(m,m).f1(m:j,j).le.y+z12(m,m).f1(m:j:i,j)
      call s_chk_l4(w13(m,m),
     1 y+z14(m,m).f1,y+z12(m,m).f1,le,022,0,2,0,2,0,2,1,j,2,1)
      e12(m:j,j)=y+z14(m,m).f1(m:j,j).le.y+z12(m,m).f1(m:j,j)
      call s_chk_l1(e12(m,m),
     1  y+z14(m,m).f1,y+z12(m,m).f1,le,023,0,2,0,2,0,2,1,j,2,1)
      w14=y+h12.ge.y+z11(m,m).f1
      call s_chk_l4(w14,y+h12,
     1 y+z11(m,m).f1,ge,001,0,2,0,2,0,2,1,0,2,1)
      e14=y+h12.ge.y+z12(m,m).f1
      call s_chk_l1(e14,
     1 y+h12,y+z12(m,m).f1,ge,002,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(y+h12.ge.y+z12(m,m).f1,y+h12,y+z12(m,m).f1,ge,
     1      003,0,2,0,2,0,2,1,0,2,1)
      w12(:,:)=y+h12.lt.y+z12(m,m).f1
      call s_chk_l4(w12,
     1 y+h12,y+z12(m,m).f1,lt,004,0,2,0,2,0,2,1,0,2,1)
      e14(:,:)=y+h12.lt.y+z12(m,m).f1
      call s_chk_l1(e14,
     1 y+h12,y+z12(m,m).f1,lt,005,0,2,0,2,0,2,1,0,2,1)
      w13(m:j,m:j)=y+h12.gt.y+z12(m,m).f1
      call s_chk_l4(w13,y+h12,
     1 y+z12(m,m).f1,gt,006,0,2,0,2,0,2,1,0,2,1)
      e13(m:j,m:j)=y+h12.gt.y+z12(m,m).f1
      call s_chk_l1( e13,y+h12,
     1  y+z12(m,m).f1,gt,007,0,2,0,2,0,2,1,0,2,1)
      w12(m:j:j,m:j:j)=
     1  y+h12(m:j:j,m:j:j).ge.y+z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l4(w12,
     1 y+h12,y+z12(m,m).f1,ge,008,0,2,0,2,0,2,j,0,2,j)
      e14(m:j:j,m:j:j)=
     1  y+h12(m:j:j,m:j:j).eq.y+z12(m,m).f1(m:j:j,m:j:j)
      call s_chk_l1(e14,y+h12,
     1 y+z12(m,m).f1,eq,009,0,2,0,2,0,2,j,0,2,j)
      call s_chk_l4(y+h12(m:j:i,m:j:i).ge.y+z12(m,m).f1(m:j:i,m:j:i),
     1      y+h12,y+z12(m,m).f1,ge,010,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(y+h12(m:j:i,m:j:i).ne.y+z12(m,m).f1(m:j:i,m:j:i),
     1      y+h12,y+z12(m,m).f1,ne,011,0,2,0,2,0,2,1,0,2,1)
      w14(:,:)=y+h12(:,:).lt.y+h13(:,:)
      call s_chk_l4(w14,y+h12,y+h13,lt,012,0,2,0,2,0,2,1,0,2,1)
      e13(:,:)=y+h12(:,:).lt.y+z12(m,m).f1(:,:)
      call s_chk_l1( e13,
     1 y+h12,y+z12(m,m).f1,lt,013,0,2,0,2,0,2,1,0,2,1)
      w14(m:j,m:j)=y+h12(m:j:i,m:j).gt.y+h13(m:j,m:j:i)
      call s_chk_l4(w14,y+h12,y+h13,gt,014,0,2,0,2,0,2,1,0,2,1)
      e14(m:j,m:j)=y+h13(m:j,m:j).gt.y+h12(m:j:i,m:j)
      call s_chk_l1( e14,y+h13,y+h12,gt,015,0,2,0,2,0,2,1,0,2,1)
      w13(j,:)=y+h13(j,:).lt.y+h12(j,:)
      call s_chk_l4(w13(m,m),y+h13,y+h12,lt,016,0,2,0,2,j,2,j,0,2,1)
      e12(j,:)=y+h13(j,:).lt.y+h12(j,:)
      call s_chk_l1(e12(m,m),y+h13,y+h12,lt,017,0,2,0,2,j,2,j,0,2,1)
      w14(j,m:j)=y+h12(j,m:j).gt.y+h13(j,m:j:i)
      call s_chk_l4(w14(m,m),y+h12,y+h13,gt,018,0,2,0,2,j,2,j,0,2,1)
      e14(j,m:j)=y+h13(j,m:j).gt.y+h12(j,m:j)
      call s_chk_l1(e14(m,m),y+h13,y+h12,gt,019,0,2,0,2,j,2,j,0,2,1)
      w12(:,j)=y+h12(:,j).le.y+h13(:,j)
      call s_chk_l4(w12(m,m),y+h12,y+h13,le,020,0,2,0,2,0,2,1,j,2,1)
      e13(:,j)=y+h13(:,j).le.y+h12(:,j)
      call s_chk_l1(e13(m,m),y+h13,y+h12,le,021,0,2,0,2,0,2,1,j,2,1)
      w13(m:j,j)=y+h12(m:j,j).le.y+h13(m:j:i,j)
      call s_chk_l4(w13(m,m),y+h12,y+h13,le,022,0,2,0,2,0,2,1,j,2,1)
      e12(m:j,j)=y+h13(m:j,j).le.y+h12(m:j,j)
      call s_chk_l1(e12(m,m),y+h13,y+h12,le,023,0,2,0,2,0,2,1,j,2,1)
      end
      subroutine s_chk_l4(w11,a1,a2,code,id,
     1            dlow1,dupp1,dlow2,dupp2,
     1            rlow1,rupp1,rinc1,rlow2,rupp2,rinc2)
      integer             dlow1,dupp1,dlow2,dupp2,
     1            rlow1,rupp1,rinc1,rlow2,rupp2,rinc2
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
      integer*1 code
      logical*4,dimension(0:2,0:2):: w11,wm
      real*8,dimension(dlow1:dupp1,dlow2:dupp2)::a1,a2
      select case(code)
       case (eq ,ne) 
        do ic2=rlow2,rupp2,rinc2
        do ic1=rlow1,rupp1,rinc1
          wm(ic1,ic2)=a1(ic1,ic2).eq.a2(ic1,ic2)
          if (code.eq.ne) wm(ic1,ic2)=.not.wm(ic1,ic2)
        end do
        end do
       case (gt , le)
        do ic2=rlow2,rupp2,rinc2
        do ic1=rlow1,rupp1,rinc1
          wm(ic1,ic2)=a1(ic1,ic2).gt.a2(ic1,ic2)
          if (code.eq.le) wm(ic1,ic2)=.not.wm(ic1,ic2)
        end do
        end do
       case (ge , lt)
        do ic2=rlow2,rupp2,rinc2
        do ic1=rlow1,rupp1,rinc1
          wm(ic1,ic2)=a1(ic1,ic2).lt.a2(ic1,ic2)
          if (code.eq.ge) wm(ic1,ic2)=.not.wm(ic1,ic2)
        end do
        end do
       case default
        call err(id,998)
      end select
      do ic2=rlow2,rupp2,rinc2
      do ic1=rlow1,rupp1,rinc1
        select case(w11(ic1,ic2))
         case (.true.)
           select case(wm(ic1,ic2))
              case (.true.)
              case (.false.)
                print *,ic1,ic2,w11(ic1,ic2),wm(ic1,ic2)
                print *,a1(ic1,ic2),a2(ic1,ic2)
                call err(id,997)
           end select
         case default 
           select case(wm(ic1,ic2))
              case (.true.)
                call err(id,996)
              case (.false.)
           end select
        end select
      end do
      end do
      end
      subroutine s_chk_l1(w11,a1,a2,code,id,
     1            dlow1,dupp1,dlow2,dupp2,
     1            rlow1,rupp1,rinc1,rlow2,rupp2,rinc2)
      integer             dlow1,dupp1,dlow2,dupp2,
     1            rlow1,rupp1,rinc1,rlow2,rupp2,rinc2
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
      integer*1 code
      logical*1,dimension(0:2,0:2):: w11,wm
      real*8,dimension(dlow1:dupp1,dlow2:dupp2)::a1,a2
      select case(code)
       case (eq ,ne) 
        do ic2=rlow2,rupp2,rinc2
        do ic1=rlow1,rupp1,rinc1
          wm(ic1,ic2)=a1(ic1,ic2).eq.a2(ic1,ic2)
          if (code.eq.ne) wm(ic1,ic2)=.not.wm(ic1,ic2)
        end do
        end do
       case (gt , le)
        do ic2=rlow2,rupp2,rinc2
        do ic1=rlow1,rupp1,rinc1
          wm(ic1,ic2)=a1(ic1,ic2).gt.a2(ic1,ic2)
          if (code.eq.le) wm(ic1,ic2)=.not.wm(ic1,ic2)
        end do
        end do
       case (ge , lt)
        do ic2=rlow2,rupp2,rinc2
        do ic1=rlow1,rupp1,rinc1
          wm(ic1,ic2)=a1(ic1,ic2).lt.a2(ic1,ic2)
          if (code.eq.ge) wm(ic1,ic2)=.not.wm(ic1,ic2)
        end do
        end do
       case default
        call err(id,998)
      end select
      do ic2=rlow2,rupp2,rinc2
      do ic1=rlow1,rupp1,rinc1
        select case(w11(ic1,ic2))
         case (.true.)
           select case(wm(ic1,ic2))
              case (.true.)
              case (.false.)
                call err(id,997)
           end select
         case default 
           select case(wm(ic1,ic2))
              case (.true.)
                call err(id,996)
              case (.false.)
           end select
        end select
      end do
      end do
      end
