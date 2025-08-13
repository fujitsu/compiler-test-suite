      PROGRAM MAIN
      INTEGER*4  NA1(10),NA2(10)
      REAL   *4  RA1(10),RA2(10),RA3(10),RA4(10)
      REAL   *8  DA1(10),DA2(10),DA3(10),DA4(10)
      COMPLEX*8  CA1(10)
      COMPLEX*16 CDA1(10)
      real*4 res(10)/12.414213,13.828427,15.2426405,16.656854,
     +     18.071067,19.485281,20.899494,22.31371,23.727922,
     +     25.142135/

      DO 10 I=1,10
       RA1(I)=FLOAT(I)
       DA1(I)=DFLOAT(I)
       CA1(I)=CMPLX(I,I)
 10    CDA1(I)=DCMPLX(I,-I)

      DO 20 I=1,10
       NA1(I)=IFIX(RA1(11-I))
       NA2(I)=IDINT(DA1(11-I))
       RA2(I)=REAL(NA2(I))
       RA3(I)=SNGL(DREAL(FLOAT(NA1(I))+CDA1(I)))
 20    DA2(I)=DIM(DA1(I),IMAG(CA1(I)))

      DO 30 I=1,10
       RA4(I)=CABS(CA1(I))+RA3(I)
       DA3(I)=CDABS(CDA1(I))
 30    DA4(I)=ABS(DA2(I))+DPROD(RA1(I),-1*RA2(I))

      WRITE(6,*) NA1,NA2,CA1,CDA1
      WRITE(6,*)
      WRITE(6,*) RA1,RA2,RA3
      call check(RA4,res)
      WRITE(6,*)
      WRITE(6,*) DA1,DA2,DA3,DA4
      END

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      real calc(10),res(10)
      logical ngcheck/.FALSE./
      do i=1,10
         if (IS_EQUAL(calc(i), res(i))) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end
