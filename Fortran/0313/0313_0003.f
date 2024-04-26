        SUBROUTINE OVER(NCOMP,RVOL,LSZ,LMAX)
        DIMENSION NCOMP(LSZ),RVOL(LSZ)
        MMAX = 0
        DO L = 1,LMAX
        RVOL(L) = 0.0
        MMAX = MAX0(MMAX,NCOMP(L))
        END DO
        write(6,*) mmax
        END
        DIMENSION NCOMP(1000),RVOL(1000)
        NCOMP=0
        NCOMP(1)  = 0
        NCOMP(2)  = -2
        NCOMP(10) = 10
        call OVER(NCOMP,RVOL,1000,16)
        end
