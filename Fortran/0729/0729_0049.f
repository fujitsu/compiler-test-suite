      SUBROUTINE DENMWW (MBEG  , MEND  , NC    , NACT  ,
     &                   GVOLPH, VP    , VTOT4 , IBDUM , JDUM  )
      DIMENSION GVOLPH(NACT,*), VP(*)    , VTOT4(NACT,*),
     &          IBDUM(300)    , JDUM(300)
      DO IV = 1,NC
        DO IB = MBEG,MEND
          IF(IBDUM(IB).GT.0)THEN
            VTOT4(IB,IV)= VTOT4(IB,IV) - GVOLPH(IB,JDUM(IB))*VP(IB)
          ELSE
            VTOT4(IB,IV)= VTOT4(IB,IV) - VP(IB)
          ENDIF
        ENDDO
      ENDDO
      RETURN
      END
      print *,'pass'
      end
