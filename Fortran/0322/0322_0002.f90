        INTEGER :: aaa,bbb
!$OMP THREADPRIVATE(aaa)
        call sub()
        print *,"pass"
        END 
        subroutine sub()
        INTEGER,save :: bbb,ccc
!$OMP THREADPRIVATE(bbb,ccc)
        end
