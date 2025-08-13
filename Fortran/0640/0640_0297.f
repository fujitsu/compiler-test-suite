      PROGRAM MAIN
      DATA N/10/
      INTEGER*4  I10(10),I11(10),I12(10),I13(10)
      REAL*4     R10(10),R11(10),R12(10),R13(10),R14(10)
      REAL*8     D10(10),D11(10),D12(10),D13(10),D14(10)
      COMPLEX*8  C10(10),C11(10),C12(10),C13(10),C14(10)
      COMPLEX*16 CD10(10),CD11(10),CD12(10),CD13(10),CD14(10)
      DATA  R10/1,2,3,4,5,6,7,8,9,10/,D10/1,2,3,4,5,6,7,8,9,10/
      DATA  C10/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
     1          (9,9),(10,10)/
      DATA  CD10/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
     1           (9,9),(10,10)/

      DATA M/10/
      INTEGER*4   I14(10)
      REAL*4      R15(10)
      REAL*8      D15(10)
      COMPLEX*8   C15(10)
      COMPLEX*16  CD15(10)
      DATA   R15/1,2,3,4,5,6,7,8,9,10/
      DATA   C15/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
     1           (9,9),(10,10)/
      DATA   D15/1,2,3,1,2,3,3,2,1,1/
      DATA   CD15/(1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),
     1            (3,3),(4,4)/

      DATA L/10/
      INTEGER*4   I20(10),I21(10)
      REAL*4      R20(10),R21(10)
      REAL*8      D20(10)
      COMPLEX*8   C20(10)
      COMPLEX*16  CD20(10),CD21(10)
      DATA  I21/1,-2,3,-4,5,-6,7,-8,9,-10/
      DATA  R20/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.10/
      DATA  D20/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.10/
      DATA  C20/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
     1          (9,9),(10,10)/
      DATA  CD20/(2,1),(3,1),(4,3),(2,2),(2,3),(4,3),(5,5),(6,6),
     1           (6,9),(8,10)/

      complex*8 res1(10)/(-3.,-1.),(-4.,-1.),(-5.,-3.),(0.,-2.),
     +     (1.,-3.),(-2.0000004,-3.),(-3.,-5.),(-4.,-6.),
     +     (-3.000002,-9.),(-6.,-10.)/
      complex*16 res2(10)/(6.,1.),(10.,1.),(14.,3.),(12.,2.),
     +     (14.,3.),(20.000000476837158,3.),(24.,5.),(28.,6.),
     +     (30.000001907348633,9.),(36.,10.)/

      D11 = 0

      DO 10 I=1,N
        I10(I) = -R10(I)
        I11(I) = -D10(I)
        I12(I) = -C10(I)
        I13(I) =  CD10(I)
        R11(I) = I11(I)
        R12(I) = D11(I)
        R13(I) = C10(I)
        R14(I) = -CD10(I)
        D11(I) = I10(I)
        D12(I) = R13(I)
        D13(I) = C10(I)
        D14(I) = -CD10(I)
        C11(I) = I12(I)
        C12(I) = -R14(I)
        C13(I) =  D13(I)
        C14(I) = CD10(I)
        CD11(I) = I13(I)
        CD12(I) = -R12(I)
        CD13(I) =  D14(I)
        CD14(I) = -C13(I)
   10 CONTINUE
      WRITE(6,*) I10,I11,I12,I13
      WRITE(6,*) R11
      WRITE(6,*) R12
      WRITE(6,*) R13
      WRITE(6,*) R14
      WRITE(6,*) D11
      WRITE(6,*) D12
      WRITE(6,*) D13
      WRITE(6,*) D14
      WRITE(6,*) C11
      WRITE(6,*) C12
      WRITE(6,*) C13
      WRITE(6,*) C14
      WRITE(6,*) CD11
      WRITE(6,*) CD12
      WRITE(6,*) CD13
      WRITE(6,*) CD14

      DO 20 I=1,M
        I14(I) = R15(I) + C15(I) + D15(I) + CD15(I)
        R15(I) = C15(I) - I14(I) - D15(I) + CD15(I)
        D15(I) = I14(I) * R15(I) + CD15(I) - C15(I)
        C15(I) = D15(I) + I14(I) - R15(I) + CD15(I)
        CD15(I) = C15(I) + D15(I) + I14(I)/R15(I)
   20 CONTINUE
      WRITE(6,*) I14
      WRITE(6,*) R15
      WRITE(6,*) D15
      WRITE(6,*) C15
      WRITE(6,10000) CD15
10000 FORMAT(' CD15 = ',/(5F15.4))

      DO 30 J=1,L
        I20(J)=INT(R20(J)) + IDINT(D20(J)) + INT(C20(J)) - INT(CD20(J))
        R20(J)=REAL(I20(J))+ FLOAT(I21(J)) - SNGL(D20(J))+ REAL(C20(J))
     1         - REAL(CD20(J))
        D20(J)= DFLOAT(J) + DBLE(R20(J)) - DBLE(C20(J))
     1         + DREAL(CD20(J))
        C20(J) = CMPLX(J) + CMPLX(R20(J)) - CMPLX(D20(J))
     1         - CMPLX(CD20(J))
        CD20(J) = DCMPLX(I20(J)) - DCMPLX(R20(J)) + DCMPLX(D20(J))
     1          - DCMPLX(C20(J))
        R21(J)  = AIMAG(C20(J)) + DIMAG(CD20(J))
        CD21(J) = AIMAG(C20(J)) - DIMAG(CD20(J))
   30 CONTINUE
      WRITE(6,*) I20
      WRITE(6,*) R20
      WRITE(6,*) R21
      WRITE(6,10001) D20
10001 FORMAT(' D20 = ',/(5F15.4))
      call check(C20,res1)
      WRITE(6,*)
      call check2(CD20,res2)
      WRITE(6,*)
      WRITE(6,*) CD21
      STOP
      END

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      complex*8 calc(10),res(10)
      real*4 re1,im1,re2,im2
      logical ngcheck/.FALSE./
      do i=1,10
         re1 = real(calc(i))
         im1 = imag(calc(i))
         re2 = real(res(i))
         im2 = imag(res(i))
         if (IS_EQUAL(re1, re2)) then
         else
            ngcheck = .TRUE.
         endif
         if (IS_EQUAL(im1, im2)) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end

#define IS_EQUAL2(a,b) ((a==b).or.(a==0.and.abs(b)<10E-8).or.(abs(a-b)/abs(a)<10E-8))
      subroutine check2(calc,res)
      complex*16 calc(10),res(10)
      real*8 re1,im1,re2,im2
      logical ngcheck/.FALSE./
      do i=1,10
         re1 = real(calc(i))
         im1 = imag(calc(i))
         re2 = real(res(i))
         im2 = imag(res(i))
         if (IS_EQUAL2(re1, re2)) then
         else
            ngcheck = .TRUE.
         endif
         if (IS_EQUAL2(im1, im2)) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end
