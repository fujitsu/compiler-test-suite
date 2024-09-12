        common /com/a2,a3
        common //a4,a5
        integer*2 a1,a2,a3,a4,a5
        a1=10
        a2=a1
        a3=a1
        a4=a1
        a5=a1
        print *,a1,a2,a3,a4,a5
        call sub1(a1)
        print *,a1,a2,a3,a4,a5
        stop
        end
        subroutine sub1(s1)
        integer*2 s1
        common /com/s2,s3
        common //s4,s5
        integer*2 s2,s3,s4,s5
        s1=s2+s3
        s4=s2
        s5=s3
        print *,s1,s2,s3,s4,s5
        stop '--exit sub'
        end
