      program main
      complex*8  x0(10,10),x1(10,10),x2(10,10),x3(10,10),x4(10,10),
     &        x5(10,10),x6(10,10),x7(10,10),x8(10,10),x9(10,10),
     &        x10(10,10),x11(10,10),x12(10,10),x13(10,10),x14(10,10)
      complex*8  res,result
      data    result/(9535.19238,29335.2031)/


      do j=1,10
       do i=1,10
         x0(i,j)=(0.0,0.0)
         x1(i,j)=(1.0,1.0)
         x2(i,j)=(2.0,2.0)
         x3(i,j)=(3.0,3.0)
         x4(i,j)=(4.0,4.0)
         x5(i,j)=(5.0,5.0)
         x6(i,j)=(6.0,6.0)
         x7(i,j)=(7.0,7.0)
         x8(i,j)=(8.0,8.0)
         x9(i,j)=(9.0,9.0)
         x10(i,j)=(10.0,10.0)
         x11(i,j)=(11.0,11.0)
         x12(i,j)=(12.0,12.0)
         x13(i,j)=(13.0,13.0)
         x14(i,j)=(14.0,14.0)
       enddo
      enddo
      do j=1,10
       do i=1,10
         x0(i,j)=x1(i,j)*i+x2(i,j)*i+x3(i,j)*i+x4(i,j)*i
     &          +x5(i,j)+x6(i,j)+x7(i,j)+x8(i,j)+x9(i,j)*x11(i,j)
     &          +x10(i,j)/i+x12(i,j)/i+x13(i,j)/i+x14(i,j)/i
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
        res=res+x0(i,j)
       enddo
      enddo
      if (abs(res-result)>0.0001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
