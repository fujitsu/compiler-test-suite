  !             CVCT6112            LEVEL=6        DATE=83.02.17
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6112                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.2.17                                  *C
  !********************************************************************C
  DATA N2/2/,N10/10/
  !
  !     DATA DECLARATION
  !
  type st1
     INTEGER*4   I10(10),I11(0:20) ,I12(20)
     REAL*4      R10(10),R11(20)
     REAL*8      D10(10),D11(20),D12(20)
     COMPLEX*8   C10(10)
     COMPLEX*16  CD10(20),CD11(20)
  end type st1
  type(st1) :: str
  REAL*8      D10S,D11S,D12S
  COMPLEX*8   C10S
  COMPLEX*16  CD10S
  !
  DATA  R10S/1.0/, I10S/0/, str%D10/9,16, &
       25,144,256,2500,64,81,1,0/, str%C10/(1,1),(0,1),(1,0),(0,0), &
       (4,4),(9,2),(3,4),(0,1),(20,5),(8,8)/, str%CD11/(-5,-5),(-8,0), &
       3*(-32,-15),4*(8,8),4*(2,9),2*(9,2),2*(3,6),3*(-1,-1)/ , &
       str%D11/0,2,4,8,-5,-2,0,2,9,11,0,8,-12,24,31,10,71,91,-3,22/, &
       str%D12/5*0,5*-1,5*2,5*-5/ ,I12S/0/, str%CD10/5*(2,0),5*(2,2), &
       5*(-3,-3),5*(-4,4)/, str%I11/8*2,8*-4,2*2,3*-2/ ,str%R11/4*4,4*0, &
       4*-8,4*2,4*-5/ ,R11S/0/,str%R10/-1,-2,-3,-4,-5,3,2,7,8,9/ , &
       D10S/0/,D11S/0/,D12S/0/ ,I11S/0/ ,str%I10/1,3,5,7,9,11,13,15, &
       17,19/ , str%I12/2,4,6,8,10,12,14,16,18,20,5*0,5*1/
  !
  WRITE(6,*) '***** CVCT6112 *****'
  WRITE(6,*) '----- NO.1 -----'
  DO  J=1,N2
     R10S = AMAX1(R10S,str%R10(J))
     I10S = I10S + str%I10(J)
     D10S = SQRT(str%D10(J))
     D11S = SQRT(D10S)
     D12S = SQRT(D11S)
     !
     DO  I=1,N10
        C10S = str%C10(I)
        CD10S = str%CD11(I) + C10S
        I11S = I11S + 1
        str%D11(I11S) = str%D11(I11S) + DBLE(C10S) - DBLE(CD10S)
        str%D12(I11S) = str%D11(I11S) + DBLE(C10S) - DBLE(CD10S)
        I12S = I12S + 1
        str%CD10(I12S) = CMPLX(str%D11(I11S)) / CMPLX(str%D12(I11S))
        str%I11(I11S) = str%I11(I11S-1) + INT(str%CD10(I12S))
        str%I11(I12S) = str%I12(I12S) + INT(str%D11(I11S))
10      str%R11(I) = str%R11(I11S) + REAL(str%CD10(I12S))
     enddo
     !
     R11S = R11S + str%R10(J)
     D10S = D11S * D11S + D12S
     str%D11(J) = D10S
100  CONTINUE
  enddo
  !
  WRITE(6,*) ' R10S  = ',R10S
  WRITE(6,*) ' I10S  = ',I10S
  WRITE(6,10000) str%D11
10000 FORMAT(' str%D11   = ',4F15.10/)
  WRITE(6,*) ' C10S  = ',C10S
  WRITE(6,*) ' CD10S = ',CD10S
  WRITE(6,*) ' str%D12   = ',str%D12
  WRITE(6,*) ' str%CD10   = '
  WRITE(6,10001) str%CD10
10001 FORMAT(4F15.5/)
  WRITE(6,*) ' str%I11   = ',str%I11
  WRITE(6,*) ' str%R11   = ',str%R11
  STOP
END program
