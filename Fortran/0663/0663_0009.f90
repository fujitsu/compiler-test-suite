        call sub(2)
        end
        subroutine sub(n)
        complex*8 c11(512,n,512),c12(768,n,768),c13(128,n,128)
        complex*16 c21(512,512,n),c22(768,768,n),c23(128,128,n)
        complex*32 c31(n,512,512),c32(n,768,768),c33(n,128,128)
        print *,'pass'
        end
