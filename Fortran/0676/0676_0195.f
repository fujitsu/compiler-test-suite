        parameter(n=20)
        real*8 a1(n),a2(n),a3(n),a4(n),a5(n),a6(n),a7(n),a8(n),a9(n)
     *         ,a10(n),a11(n),a12(n),a13(n),a14(n),a15(n),a16(n)

        a1=0
        a2=2
        a3=3
        a4=4
        a5=5
        a6=6
        a7=7
        a8=8
        a9=9
        a10=10
        a11=11
        a12=12
        a13=13
        a14=14
        a15=15
        a16=16

        call sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14
     *           ,a15,a16,n)
        print *,a1(1)
        print *,a1(n)
        end

        subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,
     *                 a15,a16,n)
        real*8 a1(n),a2(n),a3(n),a4(n),a5(n),a6(n),a7(n),a8(n),a9(n)
     *         ,a10(n),a11(n),a12(n),a13(n),a14(n),a15(n),a16(n)
        do i=1,n
          a1(i)=a2(i)+a3(i)+a4(i)+a5(i)+a6(i)+a7(i)+a8(i)+
     *    a9(i)+a10(i)+a11(i)+a12(i)+a13(i)+a14(i)+a15(i)+a16(i)
        enddo
        end

