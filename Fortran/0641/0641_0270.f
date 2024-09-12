      PROGRAM MAIN

       COMPLEX*8 C11(10), C12(10), C13(10), C14(10), C15(10), C16(10), 
     X   C17(10), C11V, C12V, C13V

       DATA C14/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
     X   (10,10)/ 

       LOGICAL*4 L20(10)
       COMPLEX*8 C20(10), C21(10), C22(10), C23(10), C24(10), C25(10), 
     X   C20V, C21V, C22V
       INTEGER N
       PARAMETER (N = 10)
       INTEGER AA11
       COMPLEX CC30, CC29, CC28, CC27, CC26, CC25, CC24, CC23, CC22, 
     X   CC21, CC20, CC19, CC18, CC17, CC16, CC15, CC14, CC13, CC12, 
     X   CC11, CC10, CC9, CC8, CC7, CC6, CC5, CC4, CC3, CC2, CC1
       C13V = (0., 0.)
       C22V = (0., 0.)
       DATA L20/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 

       DO AA11=1,6,5
        C20(AA11) = (0., 0.)
        C20(AA11+1) = (0., 0.)
        C20(AA11+2) = (0., 0.)
        C20(AA11+3) = (0., 0.)
        C20(AA11+4) = (0., 0.)
        C21(AA11) = (0., 0.)
        C21(AA11+1) = (0., 0.)
        C21(AA11+2) = (0., 0.)
        C21(AA11+3) = (0., 0.)
        C21(AA11+4) = (0., 0.)
        C22(AA11) = (0., 0.)
        C22(AA11+1) = (0., 0.)
        C22(AA11+2) = (0., 0.)
        C22(AA11+3) = (0., 0.)
        C22(AA11+4) = (0., 0.)
        C23(AA11) = (0., 0.)
        C23(AA11+1) = (0., 0.)
        C23(AA11+2) = (0., 0.)
        C23(AA11+3) = (0., 0.)
        C23(AA11+4) = (0., 0.)
        C24(AA11) = (0., 0.)
        C24(AA11+1) = (0., 0.)
        C24(AA11+2) = (0., 0.)
        C24(AA11+3) = (0., 0.)
        C24(AA11+4) = (0., 0.)
        C25(AA11) = (0., 0.)
        C25(AA11+1) = (0., 0.)
        C25(AA11+2) = (0., 0.)
        C25(AA11+3) = (0., 0.)
        C25(AA11+4) = (0., 0.)
       END DO

       WRITE (6, *) '----- LOOP 1 -----'
       DO I=1,6,5
        CC1 = (1.0,2.0)
        CC2 = (1.0,1.0)
        CC3 = C14(I)
        CC4 = CC3 + (1.5,2.5)
        CC5 = (2.0,3.0) - CC4
        CC6 = CC4 * CC5
        C13V = C13V + CC1 + CC2 + CC3 + CC4 - CC5 + CC6
        CC7 = (1.0,2.0)
        CC8 = (1.0,1.0)
        CC9 = C14(I+1)
        CC10 = CC9 + (1.5,2.5)
        CC11 = (2.0,3.0) - CC10
        CC12 = CC10 * CC11
        C13V = C13V + CC7 + CC8 + CC9 + CC10 - CC11 + CC12
        CC13 = (1.0,2.0)
        CC14 = (1.0,1.0)
        CC15 = C14(I+2)
        CC16 = CC15 + (1.5,2.5)
        CC17 = (2.0,3.0) - CC16
        CC18 = CC16 * CC17
        C13V = C13V + CC13 + CC14 + CC15 + CC16 - CC17 + CC18
        CC19 = (1.0,2.0)
        CC20 = (1.0,1.0)
        CC21 = C14(I+3)
        CC22 = CC21 + (1.5,2.5)
        CC23 = (2.0,3.0) - CC22
        CC24 = CC22 * CC23
        C13V = C13V + CC19 + CC20 + CC21 + CC22 - CC23 + CC24
        CC25 = (1.0,2.0)
        CC26 = (1.0,1.0)
        CC27 = C14(I+4)
        CC28 = CC27 + (1.5,2.5)
        CC29 = (2.0,3.0) - CC28
        CC30 = CC28 * CC29
        C13V = C13V + CC25 + CC26 + CC27 + CC28 - CC29 + CC30
        C17(I+4) = CC30
        C16(I+4) = CC29
        C15(I+4) = CC28
        C13(I+4) = CC27
        C12(I+4) = CC26
        C11(I+4) = CC25
        C17(I+3) = CC24
        C16(I+3) = CC23
        C15(I+3) = CC22
        C13(I+3) = CC21
        C12(I+3) = CC20
        C11(I+3) = CC19
        C17(I+2) = CC18
        C16(I+2) = CC17
        C15(I+2) = CC16
        C13(I+2) = CC15
        C12(I+2) = CC14
        C11(I+2) = CC13
        C17(I+1) = CC12
        C16(I+1) = CC11
        C15(I+1) = CC10
        C13(I+1) = CC9
        C12(I+1) = CC8
        C11(I+1) = CC7
        C17(I) = CC6
        C16(I) = CC5
        C15(I) = CC4
        C13(I) = CC3
        C12(I) = CC2
        C11(I) = CC1
       END DO

       WRITE (6, *) C11
       WRITE (6, *) C12
       WRITE (6, *) C13
       WRITE (6, *) C15
       WRITE (6, *) C16
       WRITE (6, *) C17
       WRITE (6, *) C13V

       DO I=1,10
        IF (L20(I)) THEN
         C20(I) = (1.0,2.0)
         C21(I) = -(1.0,1.0)
         C22(I) = C21(I)
         C23(I) = C22(I) + (1.5,2.5)
         C24(I) = (2.0,3.0) - C23(I)
         C25(I) = C24(I) * C23(I)
         C22V = C22V + C20(I) + C21(I) + C22(I) + C23(I) + C24(I) + C25(
     X     I)
        END IF
       END DO
       WRITE (6, *) C20
       WRITE (6, *) C21
       WRITE (6, *) C22
       WRITE (6, *) C23
       WRITE (6, *) C24
       WRITE (6, *) C25
       WRITE (6, *) C22V
       STOP 
      END
