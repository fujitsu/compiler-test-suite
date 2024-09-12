        i=0
        call s(i)
        call s2(i)
        call s23(i)
        call s234(i)
        call s2345(i)
        call s23456(i)
        call s234567(i)
        call s2345678(i)
        call s23456789(i)
        call s234567890(i)
        call s2345678901(i)
        call s23456789012(i)
        call s234567890123(i)
        call s2345678901234(i)
        call s23456789012345(i)
        call s234567890123456(i)
        call s2345678901234567(i)
        call s23456789012345678(i)
        call s234567890123456789(i)
        call s2345678901234567892(i)
        call s23456789012345678921(i)
        call s234567890123456789212(i)
        call s2345678901234567892123(i)
        call s23456789012345678921234(i)
        call s234567890123456789212345(i)
        call s2345678901234567892123456(i)
        call s23456789012345678921234567(i)
        call s234567890123456789212345678(i)
        call s2345678901234567892123456789(i)
        call s23456789012345678921234567893(i)
        call s234567890123456789212345678931(i)
        if (i.ne.32) print *,'err'
        print *,'pass'
        contains
        subroutine s(i)
        i=i+1
        end subroutine
        subroutine s2(i)
        i=i+1
        end subroutine
        subroutine s23(i)
        i=i+1
        end subroutine
        subroutine s234(i)
        i=i+1
        end subroutine
        subroutine s2345(i)
        i=i+1
        end subroutine
        subroutine s23456(i)
        i=i+1
        end subroutine
        subroutine s234567(i)
        i=i+1
        end subroutine
        subroutine s2345678(i)
        i=i+1
        end subroutine
        subroutine s23456789(i)
        i=i+1
        end subroutine
        subroutine s234567890(i)
        i=i+1
        end subroutine
        subroutine s2345678901(i)
        i=i+1
        end subroutine
        subroutine s23456789012(i)
        i=i+1
        end subroutine
        subroutine s234567890123(i)
        i=i+1
        end subroutine
        subroutine s2345678901234(i)
        i=i+1
        end subroutine
        subroutine s23456789012345(i)
        i=i+1
        end subroutine
        subroutine s234567890123456(i)
        i=i+1
        end subroutine
        subroutine s2345678901234567(i)
        i=i+1
        end subroutine
        subroutine s23456789012345678(i)
        i=i+1
        end subroutine
        subroutine s234567890123456789(i)
        i=i+1
        end subroutine
        subroutine s2345678901234567892(i)
        i=i+1
        end subroutine
        subroutine s23456789012345678921(i)
        i=i+1
        end subroutine
        subroutine s234567890123456789212(i)
        i=i+1
        end subroutine
        subroutine s2345678901234567892123(i)
        i=i+1
        end subroutine
        subroutine s23456789012345678921234(i)
        i=i+1
        end subroutine
        subroutine s234567890123456789212345(i)
        i=i+1
        end subroutine
        subroutine s2345678901234567892123456(i)
        i=i+1
        end subroutine
        subroutine s23456789012345678921234567(i)
        i=i+1
        end subroutine
        subroutine s234567890123456789212345678(i)
        i=i+1
        end subroutine
        subroutine s2345678901234567892123456789(i)
        i=i+2
        end subroutine
        subroutine s23456789012345678921234567893(i)
        i=i+1
        end subroutine
        subroutine s234567890123456789212345678931(i)
        i=i+1
        end subroutine
end
