      program main
      integer*4  x00(10),x01(10),x02(10),x03(10),x04(10),
     c        x05(10),x06(10),x07(10),x08(10),x09(10),
     c        x10(10),x11(10),x12(10),x13(10),x14(10),
     c        x15(10),x16(10),x17(10),x18(10),x19(10),
     c        x20(10),x21(10),x22(10),x23(10),x24(10),
     c        x25(10),x26(10),x27(10),x28(10),x29(10),
     c        x30(10),x31(10),x32(10)
      integer*4  res,result
      data    result/4410/


      do i=1,10
         x00(i)=0
         x01(i)=1
         x02(i)=2
         x03(i)=3
         x04(i)=4
         x05(i)=5
         x06(i)=6
         x07(i)=7
         x08(i)=8
         x09(i)=9
         x10(i)=10
         x11(i)=11
         x12(i)=12
         x13(i)=13
         x14(i)=14
         x15(i)=15
         x16(i)=16
         x17(i)=17
         x18(i)=18
         x19(i)=19
         x20(i)=20
         x21(i)=21
         x22(i)=22
         x23(i)=23
         x24(i)=24
         x25(i)=25
         x26(i)=26
         x27(i)=27
         x28(i)=28
         x29(i)=29
         x30(i)=30
         x31(i)=31
         x32(i)=32
      enddo
      do i=1,10
         x00(i)=x01(i)*i+x02(i)*i+x03(i)*i+x04(i)*i+x05(i)
     c        +x06(i)+x07(i)+x08(i)+x09(i)+x10(i)
     c        +x11(i)/i+x12(i)/i+x13(i)/i+x14(i)/i+x15(i)
     c        +x15(i)+x16(i)+x17(i)+x18(i)+x19(i)+x20(i)
     c        +x21(i)/i+x22(i)/i+x23(i)/i+x24(i)/i
     c        +x25(i)+x26(i)+x27(i)+x28(i)+x29(i)+x30(i)
     c        +x31(i)/i+x32(i)/i
      enddo
      res=0

      do i=1,10
        res=res+x00(i)
      enddo
      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x00
 20   continue
      end
