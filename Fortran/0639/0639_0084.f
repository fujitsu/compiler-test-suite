           REAL   A1(1025,2),B1(1025,2),C1(1025,2),D1(1025,2),X1,Y1(50)
           REAL   A2(1025,2),B2(1025,2),C2(1025,2),D2(1025,2),X2,Y2(50)
           REAL   A3(1025,2),A4(1025,2),A5(1025,2)
           real res1(4),res2(4),res3(4)
           real tmp1(4),tmp2(4),tmp3(4)
           data res1/1.0, 3.4999997, 4.0, 3.4999997/
           data res2/2.0, -5.2, -7.0, -5.2/
           data res3/6.0, 8.9, 9.0, 8.9/
           DATA B1/256*1.,256*2.,256*3.,256*4.,
     E             256*1.,256*2.,256*3.,256*4.,2*1.2/
           DATA D1/256*1.,256*2.,256*3.,256*4.,
     E             256*1.,256*2.,256*3.,256*4.,2*1.3/
           DATA C1/256*1.,256*2.,256*3.,256*4.,
     E             256*1.,256*2.,256*3.,256*4.,2*1.4/
           DATA Y1/10*1.,10*2.,10*3.,10*4.,10*5./
           DATA X1/3.0/
           DATA A2/256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,
     E             256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,2*1.4/
           DATA C2/256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,
     E             256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,2*1.5/
           DATA B2/256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,
     E             256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,2*1.6/
           DATA D2/256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,
     E             256*1.0D0,256*2.0D0,256*3.0D0,256*4.0D0,2*1.7/
           DATA Y2/10*1.0D0,10*2.0D0,10*3.0D0,10*4.0D0,10*5.0D0/
           DATA X2/6.0D0/
           COMPLEX CC

           M=10
           RR=4.
           CC=(2.,3.)

       DO 10 J = 1 , 2
       DO 10 I = 1 , 1025
         A1(I,J) = B1(I,J) + X1 - C1(I,J) + Y1(J)  - D1(I,J) + 1.0
         A2(I,J) = B2(I,J) - X2 + C2(I,J) - Y2( 11) + D2(I,J) - 2.0D0
         A3(I,J) = B2(I,J) + (X1+2.0)
     E                       - C1(I,J) + Y2(  21) - D1(I,J) + 2.0D0
         A4(I,J) = B2(I,J) - J  + C1(I,J) - Y2(  31) + D1(I,J) - M
         A5(I,J) = B1(I,J) + CC - C2(I,J) + Y1(1)  - D2(I,J) + RR
 10   CONTINUE
       write(6,*) ((A1(i,j),i=1,1023),j=1,2)
       write(6,*)
       write(6,*) ((A2(i,j),i=1,1023),j=1,2)
       write(6,*)
       write(6,*) ((A3(i,j),i=1,1023),j=1,2)
       write(6,*)
       PRINT *,A4
       write(6,*)
       PRINT *,A5

       n = 1
       do i=1024,1025
          do j=1,2
             tmp1(n) = a1(i,j)
             tmp2(n) = a2(i,j)
             tmp3(n) = a3(i,j)
             n = n + 1
          enddo
       enddo
       call check(tmp1,res1)
       call check(tmp2,res2)
       call check(tmp3,res3)
       END

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      real calc(4),res(4)
      logical ngcheck/.FALSE./
      do i=1,4
         if (IS_EQUAL(calc(i), res(i))) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end
