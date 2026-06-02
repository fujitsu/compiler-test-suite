 call s1
 print *,'pass'
 end
        subroutine sub(m,n)
        pointer (i,p)
        integer p(m:n),pp(11)
        i=loc(pp)
        p(-5)=1
        if (pp(1)/=1)print *,'fail'
        p(-4:5)=(/2,3,4,5,6,7,8,9,10,11/)
        if (any(p/=(/(i,i=1,11)/)))print *,'fail'
        end
        subroutine s1
        call sub(-5,5)
        end
