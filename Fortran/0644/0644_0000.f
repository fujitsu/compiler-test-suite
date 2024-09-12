        real a(1:3)
        a(1)=1.
        call sub(a,1)
        end

        subroutine sub(a,j)
        real a(j:*)
        print *,a(1)
        end
