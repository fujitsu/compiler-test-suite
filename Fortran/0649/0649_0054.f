        integer a(10)
        call sub(a)
        do 10 i=1,10
10       if (a(i).ne.i) print *,'err ',i
        print *,'pass'
        end
        subroutine sub(a)
        integer a(*)
        do 10 i=1,10
 10      a(i)=i
        end
