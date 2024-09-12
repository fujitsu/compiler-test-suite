      PROGRAM MAIN

       LOGICAL*4 L10(10), L11(10), L12(10), L13(10), L14(10), L15(10), 
     X   L16(10), L17(10), L18(10), L19(10), L20(10), L21(10), L22(10), 
     X   L23(10), L24(10)

       LOGICAL*4 L11V, L12V
       REAL*4 R10(10), R11(10)
       COMPLEX*8 C10(10), C11(10)

       DATA L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA R10/5.7E01,5.8E01,5.9E01,5.7E01,5.8E01,5.8E01,5.9E01,5.8E01,
     X   5.9E01,5.7E01/ 
       DATA R11/5.5E01,5.8E01,5.9E01,5.6E01,5.7E01,5.8E01,5.9E01,5.5E01,
     X   0.0E01,5.7E01/ 
       DATA C10/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
     X   (10,10)/ 
       DATA C11/(1.5,2),(2,2),(3.5,4),(4.5,5),(5,5),(6,6),(7.5,8),
     X   (8.5,9),(9.5,10),(10,10)/ 

       LOGICAL*4 L30(10), L31(10), L32(10), L33(10)
       INTEGER*4 I30(10)
       REAL*8 RD30(10), RD31(10), RD32(10)
       COMPLEX*16 CD30(10)
       INTEGER N
       PARAMETER (N = 10)

       DATA RD30/10,20,30,40,50,60,70,80,90,100/ 
       DATA RD31/2,3,6,4,10,3,12,10,14,10/ 
       DATA CD30/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
     X   (10,10)/ 
       DATA RD32/2,0,3,0,4,0,5,0,6,0/ 
       LOGICAL LL34, LL33, LL32, LL31, LL30, LL29, LL28, LL27, LL26, 
     X   LL25, LL24, LL23, LL22, LL21, LL20, LL19, LL18, LL17, LL16, 
     X   LL15, LL14, LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, 
     X   LL4, LL3, LL2, LL1


       WRITE (6, *) ' ----- LOOP 1 -----'
       DO I=1,6,5
        LL1 = L10(I)
        LL2 = L10(I+1)
        LL3 = L10(I+2)
        LL4 = L10(I+3)
        L11V = L10(I+4)
        L11(I) = .TRUE.
        L11(I+1) = .TRUE.
        L11(I+2) = .TRUE.
        L11(I+3) = .TRUE.
        L11(I+4) = .TRUE.
        LL5 = LL1
        LL6 = LL2
        LL7 = LL3
        LL8 = LL4
        LL9 = L11V
        LL10 = LL5
        LL11 = LL6
        LL12 = LL7
        LL13 = LL8
        LL14 = LL9
        L14(I) = LL1
        L14(I+1) = LL2
        L14(I+2) = LL3
        L14(I+3) = LL4
        L14(I+4) = L11V
        L15(I) = LL1
        L15(I+1) = LL2
        L15(I+2) = LL3
        L15(I+3) = LL4
        L15(I+4) = L11V
        LL15 = .TRUE. .EQV. LL10
        LL16 = .TRUE. .EQV. LL11
        LL17 = .TRUE. .EQV. LL12
        LL18 = .TRUE. .EQV. LL13
        LL19 = .TRUE. .EQV. LL14
        LL20 = LL5 .NEQV. LL15
        LL21 = LL6 .NEQV. LL16
        LL22 = LL7 .NEQV. LL17
        LL23 = LL8 .NEQV. LL18
        LL24 = LL9 .NEQV. LL19
        L18(I) = .NOT.LL15 .AND. .NOT.LL20
        L18(I+1) = .NOT.LL16 .AND. .NOT.LL21
        L18(I+2) = .NOT.LL17 .AND. .NOT.LL22
        L18(I+3) = .NOT.LL18 .AND. .NOT.LL23
        L18(I+4) = .NOT.LL19 .AND. .NOT.LL24
        L19(I) = LL1 .OR. .NOT.LL1
        L19(I+1) = LL2 .OR. .NOT.LL2
        L19(I+2) = LL3 .OR. .NOT.LL3
        L19(I+3) = LL4 .OR. .NOT.LL4
        L19(I+4) = L11V .OR. .NOT.L11V

        L20(I) = .TRUE.
        L20(I+1) = .TRUE.
        L20(I+2) = .TRUE.
        L20(I+3) = .TRUE.
        L20(I+4) = .TRUE.
        L17(I+4) = LL24
        L17(I+3) = LL23
        L17(I+2) = LL22
        L17(I+1) = LL21
        L17(I) = LL20
        L16(I+4) = LL19
        L16(I+3) = LL18
        L16(I+2) = LL17
        L16(I+1) = LL16
        L16(I) = LL15
        L13(I+4) = LL14
        L13(I+3) = LL13
        L13(I+2) = LL12
        L13(I+1) = LL11
        L13(I) = LL10
        L12(I+4) = LL9
        L12(I+3) = LL8
        L12(I+2) = LL7
        L12(I+1) = LL6
        L12(I) = LL5
       END DO
       WRITE (6, *) L11
       WRITE (6, *) L12
       WRITE (6, *) L13
       WRITE (6, *) L14
       WRITE (6, *) L15
       WRITE (6, *) L16
       WRITE (6, *) L17
       WRITE (6, *) L18
       WRITE (6, *) L19
       WRITE (6, *) L20
       WRITE (6, *) ' ----- LOOP 2 -----'
       DO I=1,6,5
        L30(I) = 50D0 .LT. RD30(I) / RD31(I)
        L30(I+1) = 50D0 .LT. RD30(I+1) / RD31(I+1)
        L30(I+2) = 50D0 .LT. RD30(I+2) / RD31(I+2)
        L30(I+3) = 50D0 .LT. RD30(I+3) / RD31(I+3)
        L30(I+4) = 50D0 .LT. RD30(I+4) / RD31(I+4)
        I30(I) = I
        I30(I+1) = I + 1
        I30(I+2) = I + 2
        I30(I+3) = I + 3
        I30(I+4) = I + 4
        LL25 = .TRUE.
        LL26 = .TRUE.
        LL27 = .TRUE.
        LL28 = .TRUE.
        LL29 = .TRUE.
        LL30 = CD30(I) .EQ. (1.0,2.0) * RD32(I)
        LL31 = CD30(I+1) .EQ. (1.0,2.0) * RD32(I+1)
        LL32 = CD30(I+2) .EQ. (1.0,2.0) * RD32(I+2)
        LL33 = CD30(I+3) .EQ. (1.0,2.0) * RD32(I+3)
        LL34 = CD30(I+4) .EQ. (1.0,2.0) * RD32(I+4)
        L33(I) = LL25 .AND. LL30
        L33(I+1) = LL26 .AND. LL31
        L33(I+2) = LL27 .AND. LL32
        L33(I+3) = LL28 .AND. LL33
        L33(I+4) = LL29 .AND. LL34
        L32(I+4) = LL34
        L32(I+3) = LL33
        L32(I+2) = LL32
        L32(I+1) = LL31
        L32(I) = LL30
        L31(I+4) = LL29
        L31(I+3) = LL28
        L31(I+2) = LL27
        L31(I+1) = LL26
        L31(I) = LL25
       END DO

       WRITE (6, *) L30, I30
       WRITE (6, *) L31
       WRITE (6, *) L32
       WRITE (6, *) L33
       STOP 
      END
