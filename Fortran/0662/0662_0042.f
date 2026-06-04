      call aaaaa
      call bbbbb
      call ccccc
      call ddddd
      print *,'pass'
      contains
      subroutine aaaaa
      integer*1 i1
      integer*2 i2
      integer*4 i4
      integer*8 i8
      integer*1 pi11,spi11
      integer*2 pi21,pi22,pi23,spi21,spi22,spi23
      integer*4 pi41,pi42,pi43,pi44,pi45,spi41,spi42,spi43,spi44,spi45
      integer*8 pi81,pi82,pi83,pi84,spi81,spi82,spi83,spi84
      parameter(i1=1)
      parameter(i2=2)
      parameter(i4=4)
      parameter(i8=8)
      parameter(pi11=iand(i1,i1))
      parameter(spi11=and(i1,i1))
      parameter(pi21=iand(i1,i2))
      parameter(spi21=and(i1,i2))
      parameter(pi22=iand(i2,i1))
      parameter(spi22=and(i2,i1))
      parameter(pi23=iand(i2,i2))
      parameter(spi23=and(i2,i2))
      parameter(pi41=iand(i1,i4))
      parameter(spi41=and(i1,i4))
      parameter(pi42=iand(i2,i4))
      parameter(spi42=and(i2,i4))
      parameter(pi43=iand(i4,i1))
      parameter(spi43=and(i4,i1))
      parameter(pi44=iand(i4,i2))
      parameter(spi44=and(i4,i2))
      parameter(pi45=iand(i4,i4))
      parameter(spi45=and(i4,i4))
      parameter(pi81=iand(i1,i8))
      parameter(spi81=and(i1,i8))
      parameter(pi82=iand(i2,i8))
      parameter(spi82=and(i2,i8))
      parameter(pi83=iand(i4,i8))
      parameter(spi83=and(i4,i8))
      parameter(pi84=iand(i8,i8))
      parameter(spi84=and(i8,i8))
      if(iand(i1,i1).ne.spi11) print *,'fail'
      if(pi11.ne.and(i1,i1)) print *,'fail'
      if(iand(i1,i2).ne.spi21) print *,'fail'
      if(iand(i2,i1).ne.spi22) print *,'fail'
      if(iand(i2,i2).ne.spi23) print *,'fail'
      if(pi21.ne.and(i1,i2)) print *,'fail'
      if(pi22.ne.and(i2,i1)) print *,'fail'
      if(pi23.ne.and(i2,i2)) print *,'fail'
      if(iand(i1,i4).ne.spi41) print *,'fail'
      if(iand(i2,i4).ne.spi42) print *,'fail'
      if(iand(i4,i1).ne.spi43) print *,'fail'
      if(iand(i4,i2).ne.spi44) print *,'fail'
      if(iand(i4,i4).ne.spi45) print *,'fail'
      if(pi41.ne.and(i1,i4)) print *,'fail'
      if(pi42.ne.and(i2,i4)) print *,'fail'
      if(pi43.ne.and(i4,i1)) print *,'fail'
      if(pi44.ne.and(i4,i2)) print *,'fail'
      if(pi45.ne.and(i4,i4)) print *,'fail'
      if(iand(i1,i8).ne.spi81) print *,'fail'
      if(iand(i2,i8).ne.spi82) print *,'fail'
      if(iand(i4,i8).ne.spi83) print *,'fail'
      if(iand(i8,i8).ne.spi84) print *,'fail'
      if(pi81.ne.and(i1,i8)) print *,'fail'
      if(pi82.ne.and(i2,i8)) print *,'fail'
      if(pi83.ne.and(i4,i8)) print *,'fail'
      if(pi84.ne.and(i8,i8)) print *,'fail'
      end subroutine

      subroutine bbbbb
      integer*1 i1
      integer*2 i2
      integer*4 i4
      integer*8 i8
      integer*1 pi11,spi11
      integer*2 pi21,pi22,pi23,spi21,spi22,spi23
      integer*4 pi41,pi42,pi43,pi44,pi45,spi41,spi42,spi43,spi44,spi45
      integer*8 pi81,pi82,pi83,pi84,spi81,spi82,spi83,spi84
      parameter(i1=1)
      parameter(i2=2)
      parameter(i4=4)
      parameter(i8=8)
      parameter(pi11=ior(i1,i1))
      parameter(spi11=or(i1,i1))
      parameter(pi21=ior(i1,i2))
      parameter(spi21=or(i1,i2))
      parameter(pi22=ior(i2,i1))
      parameter(spi22=or(i2,i1))
      parameter(pi23=ior(i2,i2))
      parameter(spi23=or(i2,i2))
      parameter(pi41=ior(i1,i4))
      parameter(spi41=or(i1,i4))
      parameter(pi42=ior(i2,i4))
      parameter(spi42=or(i2,i4))
      parameter(pi43=ior(i4,i1))
      parameter(spi43=or(i4,i1))
      parameter(pi44=ior(i4,i2))
      parameter(spi44=or(i4,i2))
      parameter(pi45=ior(i4,i4))
      parameter(spi45=or(i4,i4))
      parameter(pi81=ior(i1,i8))
      parameter(spi81=or(i1,i8))
      parameter(pi82=ior(i2,i8))
      parameter(spi82=or(i2,i8))
      parameter(pi83=ior(i4,i8))
      parameter(spi83=or(i4,i8))
      parameter(pi84=ior(i8,i8))
      parameter(spi84=or(i8,i8))
      if(ior(i1,i1).ne.spi11) print *,'fail'
      if(pi11.ne.or(i1,i1)) print *,'fail'
      if(ior(i1,i2).ne.spi21) print *,'fail'
      if(ior(i2,i1).ne.spi22) print *,'fail'
      if(ior(i2,i2).ne.spi23) print *,'fail'
      if(pi21.ne.or(i1,i2)) print *,'fail'
      if(pi22.ne.or(i2,i1)) print *,'fail'
      if(pi23.ne.or(i2,i2)) print *,'fail'
      if(ior(i1,i4).ne.spi41) print *,'fail'
      if(ior(i2,i4).ne.spi42) print *,'fail'
      if(ior(i4,i1).ne.spi43) print *,'fail'
      if(ior(i4,i2).ne.spi44) print *,'fail'
      if(ior(i4,i4).ne.spi45) print *,'fail'
      if(pi41.ne.or(i1,i4)) print *,'fail'
      if(pi42.ne.or(i2,i4)) print *,'fail'
      if(pi43.ne.or(i4,i1)) print *,'fail'
      if(pi44.ne.or(i4,i2)) print *,'fail'
      if(pi45.ne.or(i4,i4)) print *,'fail'
      if(ior(i1,i8).ne.spi81) print *,'fail'
      if(ior(i2,i8).ne.spi82) print *,'fail'
      if(ior(i4,i8).ne.spi83) print *,'fail'
      if(ior(i8,i8).ne.spi84) print *,'fail'
      if(pi81.ne.or(i1,i8)) print *,'fail'
      if(pi82.ne.or(i2,i8)) print *,'fail'
      if(pi83.ne.or(i4,i8)) print *,'fail'
      if(pi84.ne.or(i8,i8)) print *,'fail'
      end subroutine

      subroutine ccccc
      integer*1 i1
      integer*2 i2
      integer*4 i4
      integer*8 i8
      integer*1 pi11,spi11
      integer*2 pi21,pi22,pi23,spi21,spi22,spi23
      integer*4 pi41,pi42,pi43,pi44,pi45,spi41,spi42,spi43,spi44,spi45
      integer*8 pi81,pi82,pi83,pi84,spi81,spi82,spi83,spi84
      parameter(i1=1)
      parameter(i2=2)
      parameter(i4=4)
      parameter(i8=8)
      parameter(pi11=ieor(i1,i1))
      parameter(spi11=xor(i1,i1))
      parameter(pi21=ieor(i1,i2))
      parameter(spi21=xor(i1,i2))
      parameter(pi22=ieor(i2,i1))
      parameter(spi22=xor(i2,i1))
      parameter(pi23=ieor(i2,i2))
      parameter(spi23=xor(i2,i2))
      parameter(pi41=ieor(i1,i4))
      parameter(spi41=xor(i1,i4))
      parameter(pi42=ieor(i2,i4))
      parameter(spi42=xor(i2,i4))
      parameter(pi43=ieor(i4,i1))
      parameter(spi43=xor(i4,i1))
      parameter(pi44=ieor(i4,i2))
      parameter(spi44=xor(i4,i2))
      parameter(pi45=ieor(i4,i4))
      parameter(spi45=xor(i4,i4))
      parameter(pi81=ieor(i1,i8))
      parameter(spi81=xor(i1,i8))
      parameter(pi82=ieor(i2,i8))
      parameter(spi82=xor(i2,i8))
      parameter(pi83=ieor(i4,i8))
      parameter(spi83=xor(i4,i8))
      parameter(pi84=ieor(i8,i8))
      parameter(spi84=xor(i8,i8))
      if(ieor(i1,i1).ne.spi11) print *,'fail'
      if(pi11.ne.xor(i1,i1)) print *,'fail'
      if(ieor(i1,i2).ne.spi21) print *,'fail'
      if(ieor(i2,i1).ne.spi22) print *,'fail'
      if(ieor(i2,i2).ne.spi23) print *,'fail'
      if(pi21.ne.xor(i1,i2)) print *,'fail'
      if(pi22.ne.xor(i2,i1)) print *,'fail'
      if(pi23.ne.xor(i2,i2)) print *,'fail'
      if(ieor(i1,i4).ne.spi41) print *,'fail'
      if(ieor(i2,i4).ne.spi42) print *,'fail'
      if(ieor(i4,i1).ne.spi43) print *,'fail'
      if(ieor(i4,i2).ne.spi44) print *,'fail'
      if(ieor(i4,i4).ne.spi45) print *,'fail'
      if(pi41.ne.xor(i1,i4)) print *,'fail'
      if(pi42.ne.xor(i2,i4)) print *,'fail'
      if(pi43.ne.xor(i4,i1)) print *,'fail'
      if(pi44.ne.xor(i4,i2)) print *,'fail'
      if(pi45.ne.xor(i4,i4)) print *,'fail'
      if(ieor(i1,i8).ne.spi81) print *,'fail'
      if(ieor(i2,i8).ne.spi82) print *,'fail'
      if(ieor(i4,i8).ne.spi83) print *,'fail'
      if(ieor(i8,i8).ne.spi84) print *,'fail'
      if(pi81.ne.xor(i1,i8)) print *,'fail'
      if(pi82.ne.xor(i2,i8)) print *,'fail'
      if(pi83.ne.xor(i4,i8)) print *,'fail'
      if(pi84.ne.xor(i8,i8)) print *,'fail'
      end subroutine

      subroutine ddddd
      integer*1 i1(10,10)
      integer*2 i2(10,10)
      integer*4 i4(10,10)
      integer*8 i8(10,10)
      integer*1 pi11(10,10),spi11(10,10)
      integer*2 pi21(10,10),pi22(10,10),pi23(10,10),spi21(10,10),
     1spi22(10,10),spi23(10,10)
      integer*4 pi41(10,10),pi42(10,10),pi43(10,10),pi44(10,10),
     1pi45(10,10),spi41(10,10),spi42(10,10),spi43(10,10),
     1spi44(10,10),spi45(10,10)
      integer*8 pi81(10,10),pi82(10,10),pi83(10,10),
     1pi84(10,10),spi81(10,10),spi82(10,10),spi83(10,10),
     1spi84(10,10)
      parameter(i1=1)
      parameter(i2=2)
      parameter(i4=4)
      parameter(i8=8)
      parameter(pi11=iand(i1,i1))
      parameter(spi11=and(i1,i1))
      parameter(pi21=iand(i1,i2))
      parameter(spi21=and(i1,i2))
      parameter(pi22=iand(i2,i1))
      parameter(spi22=and(i2,i1))
      parameter(pi23=iand(i2,i2))
      parameter(spi23=and(i2,i2))
      parameter(pi41=iand(i1,i4))
      parameter(spi41=and(i1,i4))
      parameter(pi42=iand(i2,i4))
      parameter(spi42=and(i2,i4))
      parameter(pi43=iand(i4,i1))
      parameter(spi43=and(i4,i1))
      parameter(pi44=iand(i4,i2))
      parameter(spi44=and(i4,i2))
      parameter(pi45=iand(i4,i4))
      parameter(spi45=and(i4,i4))
      parameter(pi81=iand(i1,i8))
      parameter(spi81=and(i1,i8))
      parameter(pi82=iand(i2,i8))
      parameter(spi82=and(i2,i8))
      parameter(pi83=iand(i4,i8))
      parameter(spi83=and(i4,i8))
      parameter(pi84=iand(i8,i8))
      parameter(spi84=and(i8,i8))

      call sub11(iand(i1,i1),spi11)
      call sub11(pi11,and(i1,i1))
      call sub12(iand(i1,i2),spi21)
      call sub12(iand(i2,i1),spi22)
      call sub12(iand(i2,i2),spi23)
      call sub12(pi21,and(i1,i2))
      call sub12(pi22,and(i2,i1))
      call sub12(pi23,and(i2,i2))

      call sub13(iand(i1,i4),spi41)
      call sub13(iand(i2,i4),spi42)
      call sub13(iand(i4,i1),spi43)
      call sub13(iand(i4,i2),spi44)
      call sub13(iand(i4,i4),spi45)
      call sub13(pi41,and(i1,i4))
      call sub13(pi42,and(i2,i4))
      call sub13(pi43,and(i4,i1))
      call sub13(pi44,and(i4,i2))
      call sub13(pi45,and(i4,i4))
      call sub14(iand(i1,i8),spi81)
      call sub14(iand(i2,i8),spi82)
      call sub14(iand(i4,i8),spi83)
      call sub14(iand(i8,i8),spi84)
      call sub14(pi81,and(i1,i8))
      call sub14(pi82,and(i2,i8))
      call sub14(pi83,and(i4,i8))
      call sub14(pi84,and(i8,i8))
      end subroutine
      subroutine sub11(x,y)
      integer*1 x(:,:),y(:,:)
      do j=kind(x),size(array=x,dim=1)
       do k=kind(y),size(array=y,dim=1)
        if(x(j,k).ne.y(j,k)) print *,'fail'
        enddo
       enddo
      end subroutine
      subroutine sub12(x,y)
      integer*2 x(:,:),y(:,:)
      do j=kind(x)-1,size(array=x,dim=1)
       do k=kind(y),size(array=y,dim=1)
        if(x(j,k).ne.y(j,k)) print *,'fail'
        enddo
       enddo
      end subroutine
      subroutine sub13(x,y)
      integer*4 x(:,:),y(:,:)
      do j=kind(x)-3,size(array=x,dim=1)
       do k=kind(y),size(array=y,dim=1)
        if(x(j,k).ne.y(j,k)) print *,'fail'
        enddo
       enddo
      end subroutine
      subroutine sub14(x,y)
      integer*8 x(:,:),y(:,:)
      do j=kind(x)-7,size(array=x,dim=1)
       do k=kind(y),size(array=y,dim=1)
        if(x(j,k).ne.y(j,k)) print *,'fail'
        enddo
       enddo
      end subroutine
      end
