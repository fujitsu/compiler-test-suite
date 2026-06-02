  !             CVCT6105            LEVEL=4        DATE=89.10.17
  !********************************************************************C
  !*  1. PROGRAM NAME   :  CVCT6105                                   *C
  !*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
  !*                       .                                          *C
  !*  3. RESULTS        :  PARTIALLY VECTORIZED                       *C
  !*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
  !*  5. HISTORY        :  1983.1.                                    *C
  !********************************************************************C
  DATA N9/9/,N10/10/
  !
  !     DATA FOR LOOP1
  !
  type st1
     INTEGER*4 I10(10)/10*0/,I10S/2/,I11S/3/,I11(10)/5*1,5*2/
     REAL*4    R10(10)/1,2,3,4,5,6,7,8,9,10/
     REAL*8    D10(10)/1,2,3,1,2,3,7,8,9,7/
     COMPLEX*8 C10(10)/(1,1),2*(2,2),3*(3,3),4*(4,4)/
     COMPLEX*16 CD10(10)/3*(1,0),3*(1,0),3*(1,1),(0,0)/
  end type st1
  type(st1) :: str
  !
  !     DATA FOR LOOP2
  !
  type st2
     LOGICAL*4  L20(11)/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE., &
          .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
     LOGICAL L21S/.FALSE./
     logical L21(11)/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE.,.TRUE., &
          .FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE./
     logical L22(10)/10*.FALSE./
     logical     L23(10,10)/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./
     logical L24(10,10)/25*.TRUE.,25*.FALSE.,25*.FALSE.,25*.TRUE./, L20S
  end type st2
  type(st2) :: str2
  !
  WRITE(6,*) '***** CVCT6105 *****'
  WRITE(6,*) '----- TEST NO.1 -----'
  DO  J=2,N9
     DO  I=1,N10
        str%I10(I) = str%I10S
        str%I10S = str%I10(I) + str%I11S
10      str%I11S = str%I10S + str%I10(I)
     enddo
     !
     str%R10(J) = str%R10(J+1) + str%D10(J) + str%I11(J)*8
     str%C10(J) = str%C10(J+1) + str%R10(J)/2. + str%CD10(J)
     WRITE(6,*) ' SCALAR PART'
     str%R10(J) = str%R10(J-1)*str%D10(J) + str%I11(J)*8
     str%C10(J) = str%C10(J-1) + str%CD10(J) + str%R10(J)/2.
     str%I11(J) = str%I11(J-1) + str%D10(J)
100  CONTINUE
  enddo
  WRITE(6,*) ' str%I10 = ',str%I10,' str%I10S = ',str%I10S,' str%I11S = ',str%I11S
  WRITE(6,*) ' str%R10 = ',str%R10
  WRITE(6,*) ' str%I11 = ',str%I11
  WRITE(6,*) ' str%C10 = ',str%C10
  !
  WRITE(6,*) '----- TEST NO.2 -----'
  DO  J=2,N10
     WRITE(6,*) ' SECONDARY LOOP COUNT = ',J
     str2%L20(J) = str2%L20(J-1).AND..TRUE.
     str2%L20(J) = str2%L20(J)  .OR. str2%L20(J+1)
     str2%L20S = str2%L20(J).NEQV.str2%L21(J)
     !
     str2%L21(J) = str2%L21S .OR.str2%L20(J) .AND.str2%L21(J)
     str2%L22(J) = str2%L21S .OR.str2%L20(J) .AND.str2%L20S
     DO  I=1,N10
        str2%L20S = str2%L20S.AND.str2%L23(I,J)
        IF ( str2%L20S ) str2%L23(I,J) = str2%L24(I,J)
200     CONTINUE
     enddo
  enddo
  !
  WRITE(6,*) ' str2%L20 = ',str2%L20,' str2%L20S = ',str2%L20S
  WRITE(6,*) ' str2%L21 = ',str2%L21
  WRITE(6,*) ' str2%L22 = ',str2%L22
  WRITE(6,*) ' str2%L23 = '
  WRITE(6,300) str2%L23
300 FORMAT (20L3)
  STOP
END program
