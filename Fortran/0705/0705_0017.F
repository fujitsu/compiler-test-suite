      call s2
      print *,'pass'
      end
      subroutine err(i,j)
      print *,'fail'
      print *,'error code :',i,j
      end
      subroutine s2
      parameter (i=1,j=2,m=0)
      character*1              a12(0:2,0:2),a13(m:j,m:j)
      character*(i) h12(0:2,0:2),h13(m:j,m:j)
      logical*4                 w12(0:2,0:2),w13(m:j,m:j)
      logical*1                 e12(0:2,0:2),e13(m:j,m:j)
      structure /x_type/
        character*1 a1(0:2,0:2)
      end structure
      record /x_type/     x12
      record /x_type/              z12(0:2,0:2),z13(m:j,m:j)
      call  t2(loc(a12),loc(a13),loc(h12),loc(h13),loc(x12),loc(z12),
     1         loc(z13),loc(w12),loc(w13),loc(e12),loc(e13),i,j,m,'5')
      end
      subroutine set_v(c,m,j,id)
      character c*(*)(m:j,m:*)
      character mx(7)/'x','3','0','1','4','2','5'/
      if (len(c).ne.1)call err(id,999)
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
      subroutine t2(ia12,ia13,ih12,ih13,ix12,iz12,iz13,iw12,iw13,
     1  ie12,ie13,i,j,m,y)
      pointer (ia12,a12),(ia13,a13),(ih12,h12),(ih13,h13) 
      pointer (ix12,x12),           (iz12,z12),(iz13,z13) 
      pointer (iw12,w12),(iw13,w13),(ie12,e12),(ie13,e13) 
      pointer (iw11,w11),(ie11,e11),(ia11,a11)
      character*1 a11(0:2,0:2),a12(0:2,0:2),a13(m:j,m:j),a14(:,:)
      character*(1) h12(0:2,0:2),h13(m:j,m:j),y*(*)
      logical*4    w11(0:2,0:2),w12(0:2,0:2),w13(m:j,m:j),w14(:,:)
      logical*1    e11(0:2,0:2),e12(0:2,0:2),e13(m:j,m:j),e14(:,:)
      allocatable a14,z14,w14,e14
      structure /x_type/
        character*1 a1(0:2,0:2)
      end structure
      record /x_type/ x11,x12
      record /x_type/ z11(0:2,0:2),z12(0:2,0:2),z13(m:j,m:j),z14(:,:)
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
        integer*8 malloc
        integer,parameter::zzp=8
      allocate (z14(m:j,m:j),a14(m:j,m:j),w14(m:2,m:2),e14(m:j,m:j))
      ia11=malloc(9_zzp)
      iw11=malloc(9*4_zzp)
      ie11=malloc(9*1_zzp)
      call set_v(a11     ,m,j,1)
      call set_v(a12(m,0)  ,m,j,2)
      call set_v(a13(j-2,m),m,j,3)
      call set_v(a14(0  ,m),m,j,4)
      call set_v(h12(0,m)  ,m,j,5)
      call set_v(h13(j-2,j-2),m,j,6)
      call set_v( x11.a1(m,m),m,j,7)
      call set_v( x12.a1(m,0),m,j,8)
      do k1=0,2
      do k2=0,2
        call set_v( z11(k1,k2).a1(0,m) , m, j ,9)
        call set_v( z12(k1,k2).a1(m,j) , m, j ,10)
        call set_v( z13(k1,k2).a1(min(k1,m),min(m,k2)) , m, j ,11)
        call set_v( z14(max(k1,m),k2).a1(min(k1,j-2),min(m,k2)),m,j,12)
      end do
      end do
      e11(m:j:j,m:j:j)=y//a11(m:j:j,m:j:j).eq.y//a12(m:j:j,m:j:j)
      call s_chk_l1(e11,y//a11,y//a12,eq,009,0,2,0,2,0,2,j,0,2,j)
      call s_chk_l4(y//a11(m:j:i,m:j:i).ge.y//a12(m:j:i,m:j:i),
     1              y//a11,y//a12,ge,010,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(y//a11(m:j:i,m:j:i).ne.y//a12(m:j:i,m:j:i),
     1              y//a11,y//a12,ne,011,0,2,0,2,0,2,1,0,2,1)
      w11(:,:)=y//a11(:,:).lt.y//a12(:,:)
      call s_chk_l4(w11,y//a11,y//a12,lt,012,0,2,0,2,0,2,1,0,2,1)
      e11(:,:)=y//a11(:,:).lt.y//a12(:,:)
      call s_chk_l1( e11,y//a11,y//a12,lt,013,0,2,0,2,0,2,1,0,2,1)
      w11(m:j,m:j)=y//a11(m:j:i,m:j).gt.y//a12(m:j,m:j:i)
      call s_chk_l4(w11,y//a11,y//a12,gt,014,0,2,0,2,0,2,1,0,2,1)
      e11(m:j,m:j)=y//a11(m:j,m:j).gt.y//a12(m:j:i,m:j)
      call s_chk_l1(e11,y//a11,y//a12,gt,015,0,2,0,2,0,2,1,0,2,1)
      w11(j,:)=y//a11(j,:).lt.y//a12(j,:)
      call s_chk_l4(w11(m,m),y//a11,y//a12,lt,016,0,2,0,2,j,2,j,0,2,1)
      e11(j,:)=y//a11(j,:).lt.y//a12(j,:)
      call s_chk_l1(e11(m,m),y//a11,y//a12,lt,017,0,2,0,2,j,2,j,0,2,1)
      w11(j,m:j)=y//a11(j,m:j).gt.y//a12(j,m:j:i)
      call s_chk_l4(w11(m,m),y//a11,y//a12,gt,018,0,2,0,2,j,2,j,0,2,1)
      e11(j,m:j)=y//a11(j,m:j).gt.y//a12(j,m:j)
      call s_chk_l1(e11(m,m),y//a11,y//a12,gt,019,0,2,0,2,j,2,j,0,2,1)
      w11(:,j)=y//a11(:,j).le.y//a12(:,j)
      call s_chk_l4(w11(m,m),y//a11,y//a12,le,020,0,2,0,2,0,2,1,j,2,1)
      e11(:,j)=y//a11(:,j).le.y//a12(:,j)
      call s_chk_l1(e11(m,m),y//a11,y//a12,le,021,0,2,0,2,0,2,1,j,2,1)
      w11(m:j,j)=y//a11(m:j,j).le.y//a12(m:j:i,j)
      call s_chk_l4(w11(m,m),y//a11,y//a12,le,022,0,2,0,2,0,2,1,j,2,1)
      e11(m:j,j)=y//a11(m:j,j).le.y//a12(m:j,j)
      call s_chk_l1(e11(m,m),y//a11,y//a12,le,023,0,2,0,2,0,2,1,j,2,1)
      w14=y//a11.ge.y//a13
      call s_chk_l4(w14,y//a11,y//a13,ge,001,0,2,0,2,0,2,1,0,2,1)
      e14=y//a11.ge.y//a13
      call s_chk_l1( e14,y//a11,y//a13,ge,002,0,2,0,2,0,2,1,0,2,1)
      call s_chk_l4(y//a11.ge.y//a13,a11,a13,ge,003,0,2,0,2,0,2,1,0,2,1)
      w12(:,:)=y//a11.lt.y//a13
      call s_chk_l4(w12,y//a11,y//a13,lt,004,0,2,0,2,0,2,1,0,2,1)
      e14(:,:)=y//a11.lt.y//a13
      call s_chk_l1(e14,y//a11,y//a13,lt,005,0,2,0,2,0,2,1,0,2,1)
      w13(m:j,m:j)=y//a11.gt.y//a13
      call s_chk_l4(w13,y//a11,y//a13,gt,006,0,2,0,2,0,2,1,0,2,1)
      e13(m:j,m:j)=y//a11.gt.y//a13
      call s_chk_l1(e13,y//a11,y//a13,gt,007,0,2,0,2,0,2,1,0,2,1)
      end
      subroutine s_chk_l4(w11,a1,a2,code,id,
     1                    dlow1,dupp1,dlow2,dupp2,
     1                    rlow1,rupp1,rinc1,rlow2,rupp2,rinc2)
      integer             dlow1,dupp1,dlow2,dupp2,
     1                    rlow1,rupp1,rinc1,rlow2,rupp2,rinc2
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
      integer*1 code
      logical*4,dimension(0:2,0:2):: w11,wm
      character*(*),dimension(dlow1:dupp1,dlow2:dupp2)::a1,a2
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
     1                    dlow1,dupp1,dlow2,dupp2,
     1                    rlow1,rupp1,rinc1,rlow2,rupp2,rinc2)
      integer             dlow1,dupp1,dlow2,dupp2,
     1                    rlow1,rupp1,rinc1,rlow2,rupp2,rinc2
      integer*1,parameter::eq=1,ne=2,ge=3,gt=4,le=5,lt=6
      integer*1 code
      logical*1,dimension(0:2,0:2):: w11,wm
      character*(*),dimension(dlow1:dupp1,dlow2:dupp2)::a1,a2
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
