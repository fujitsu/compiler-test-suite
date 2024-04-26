      program main
      real*4  x0(10,10),x1(10,10),x2(10,10),
     &        x3(10,10),x4(10,10),x5(10,10),
     &        x6(10,10),x7(10,10),x8(10,10),
     &        x9(10,10),x10(10,10),x11(10,10),
     &        x12(10,10),x13(10,10),x14(10,10),
     &        x15(10,10),x16(10,10),x17(10,10),
     &        x18(10,10),x19(10,10),x20(10,10),
     &        x21(10,10),x22(10,10),x23(10,10),
     &        x24(10,10),x25(10,10),x26(10,10),
     &        x27(10,10),x28(10,10),x29(10,10),
     &        x30(10,10),y0(10,10),z0(10,10)
      real*4  res,result
      data    result/159750.000/


      do j=1,10
       do i=1,10
         x0(i,j)=0
         y0(i,j)=0
         z0(i,j)=0
         x1(i,j)=1
         x2(i,j)=2
         x3(i,j)=3
         x4(i,j)=4
         x5(i,j)=5
         x6(i,j)=6
         x7(i,j)=7
         x8(i,j)=8
         x9(i,j)=9
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
       enddo
      enddo
      do j=1,10
       do i=1,10
         x0(i,j)=x1(i,j)*i+x2(i,j)*i+x3(i,j)*i
     &        +x4(i,j)+x5(i,j)+x6(i,j)
     &        +x7(i,j)+x8(i,j)+x9(i,j)
     &        +x10(i,j)+x11(i,j)+x12(i,j)
     &        +x13(i,j)+x14(i,j)+x15(i,j)
     &        +x16(i,j)+x17(i,j)+x18(i,j)
     &        +x19(i,j)+x20(i,j)+x21(i,j)
     &        +x22(i,j)+x23(i,j)+x24(i,j)
     &        +x25(i,j)+x26(i,j)+x27(i,j)
     &        +x28(i,j)+x29(i,j)+x30(i,j)
         y0(i,j)=x1(i,j)+x2(i,j)+x3(i,j)
     &        +x4(i,j)*i+x5(i,j)*i+x6(i,j)*i
     &        +x7(i,j)+x8(i,j)+x9(i,j)
     &        +x10(i,j)+x11(i,j)+x12(i,j)
     &        +x13(i,j)+x14(i,j)+x15(i,j)
     &        +x16(i,j)+x17(i,j)+x18(i,j)
     &        +x19(i,j)+x20(i,j)+x21(i,j)
     &        +x22(i,j)+x23(i,j)+x24(i,j)
     &        +x25(i,j)+x26(i,j)+x27(i,j)
     &        +x28(i,j)+x29(i,j)+x30(i,j)
         z0(i,j)=x1(i,j)+x2(i,j)+x3(i,j)
     &        +x4(i,j)+x5(i,j)+x6(i,j)
     &        +x7(i,j)*i+x8(i,j)*i+x9(i,j)*i
     &        +x10(i,j)+x11(i,j)+x12(i,j)
     &        +x13(i,j)+x14(i,j)+x15(i,j)
     &        +x16(i,j)+x17(i,j)+x18(i,j)
     &        +x19(i,j)+x20(i,j)+x21(i,j)
     &        +x22(i,j)+x23(i,j)+x24(i,j)
     &        +x25(i,j)+x26(i,j)+x27(i,j)
     &        +x28(i,j)+x29(i,j)+x30(i,j)
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
        res=res+x0(i,j)+y0(i,j)+z0(i,j)
       enddo
      enddo
      if (abs(res-result)>0.001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
