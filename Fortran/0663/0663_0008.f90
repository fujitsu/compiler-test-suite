        call sub(2)
        end
        subroutine sub(n)
        integer*1 i1(512,n,512),i2(768,n,768),i3(128,n,128)
        integer*4 i11(512,512,n),i12(768,768,n),i13(128,128,n)
        integer*8 i21(n,512,512),i22(n,768,768),i23(n,128,128)
        print *,'pass'
        end
