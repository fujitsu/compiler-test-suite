      program main
      real*4  x00(10,10),x01(10,10),x02(10,10),
     &        x03(10,10),x04(10,10),x05(10,10),
     &        x06(10,10),x07(10,10),x08(10,10),
     &        x09(10,10),x10(10,10),x11(10,10),
     &        x12(10,10),x13(10,10),x14(10,10),
     &        x15(10,10),x16(10,10),x17(10,10),
     &        x18(10,10),x19(10,10),x20(10,10),
     &        x21(10,10),x22(10,10),x23(10,10),
     &        x24(10,10),x25(10,10),x26(10,10),
     &        x27(10,10),x28(10,10),x29(10,10),
     &        x30(10,10),x31(10,10),x32(10,10)
      real*4  res,result
      data    result/44445.8047/


      do j=1,10
       do i=1,10
         x00(i,j)=0
         x01(i,j)=1
         x02(i,j)=2
         x03(i,j)=3
         x04(i,j)=4
         x05(i,j)=5
         x06(i,j)=6
         x07(i,j)=7
         x08(i,j)=8
         x09(i,j)=9
         x10(i,j)=10
         x11(i,j)=11
         x12(i,j)=12
         x13(i,j)=13
         x14(i,j)=14
         x15(i,j)=15
         x16(i,j)=16
         x17(i,j)=17
         x18(i,j)=18
         x19(i,j)=19
         x20(i,j)=20
         x21(i,j)=21
         x22(i,j)=22
         x23(i,j)=23
         x24(i,j)=24
         x25(i,j)=25
         x26(i,j)=26
         x27(i,j)=27
         x28(i,j)=28
         x29(i,j)=29
         x30(i,j)=30
         x31(i,j)=31
         x32(i,j)=32
       enddo
      enddo
      do j=1,10
       do i=1,10
         x00(i,j)=x01(i,j)*i+x02(i,j)*i+x03(i,j)*i
     &         +x04(i,j)*i+x05(i,j)+x06(i,j)
     &         +x07(i,j)+x08(i,j)+x09(i,j)
     &         +x10(i,j)+x11(i,j)/i+x12(i,j)/i
     &         +x13(i,j)/i+x14(i,j)/i+x15(i,j)
     &         +x15(i,j)+x16(i,j)+x17(i,j)
     &         +x18(i,j)+x19(i,j)+x21(i,j)/i
     &         +x22(i,j)/i+x23(i,j)/i+x24(i,j)/i
     &         +x25(i,j)+x26(i,j)+x27(i,j)
     &         +x28(i,j)+x29(i,j)+x31(i,j)/i
     &         +x32(i,j)/i+x20(i,j)+x30(i,j)
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
        res=res+x00(i,j)
       enddo
      enddo
      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x00
 20   continue
      end
