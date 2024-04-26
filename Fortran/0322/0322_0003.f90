        INTEGER :: aaa,bbb
!$OMP THREADPRIVATE(aaa,bbb)
        INTEGER,save :: ccc,ddd
!$OMP THREADPRIVATE(ccc,ddd)
        INTEGER,save :: eee,fff
!$OMP THREADPRIVATE(eee,fff)
        print *,"pass"
        end
