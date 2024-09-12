        SUBROUTINE SUB10(D8)
        REAL*8 D8
        D8=12.3D+00
        END
        SUBROUTINE SUB07
        DATA N1 /123/
        N1=N1+432
        END
        SUBROUTINE SUB09(D8)
        REAL*8 D8
        D8=12.3D+00
        END
        SUBROUTINE SUB11( SIN)
        EXTERNAL  SIN
        RETURN
        END
        INTEGER FUNCTION FUN(K  )
        FUN=K+2
        RETURN
        END
        subroutine SUB13(K)
        FUN=K+2
        RETURN
        END
        SUBROUTINE SUB06
        A=1
        B=1
        C=1
        D=1
        E=1
        F=1
        G=1
        H=1
        I=1
        J=1
        K=1
        L=1
        M=1
        N=1
        O=1
        P=1
        Q=1
        R=1
        S=1
        T=1
        U=1
        V=1
        W=1
        X=1
        Y=1
        Z=1
        A11= 1
        A12= 1
        A13= 1
        A14= 1
        A15= 1
        A16= 1
        A17= 1
        A18= 1
        A19= 1
        A10= 1
        A11= 1
        A12= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        A13= 1
        RETURN
        END
        INTRINSIC  SIN
        integer FUN
        REAL*8 D,A
        COMMON /COM/A
        CALL SUB06
        PRINT *,'ITEM ( 1) OK'
        K32= 12
        CALL SUB13(K32)
        PRINT *,'ITEM ( 2) OK'
        K32= 12
        Z=FUN(K32)
        PRINT *,'ITEM ( 3) OK'
        CALL SUB11(SIN )
        PRINT *,'ITEM ( 4) OK'
        CALL SUB10(A)
        PRINT *,'ITEM ( 5) OK'
        CALL SUB09(D)
        PRINT *,'ITEM ( 6) OK'
        CALL SUB07
        PRINT *,'ITEM ( 7) OK'
        CALL SUB10(A)
        PRINT *,'ITEM ( 8) OK'
        PRINT *,'PASS'
        STOP
        END
