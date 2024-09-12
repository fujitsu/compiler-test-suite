      DIMENSION A(64)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='/)
      WRITE(6,10)
      DATA A/64*4HABCD/
      CALL PLOTS (0.0)
      CALL SYMBOL (0.0,0.0,0.5,0.0,A,256)
      CALL PLOT (109.39,-4.0,-3)
      DATA M/'SOME'/
      CALL SYMBOL (0.0,0.0,1.0,0.0,M,0)
      CALL PLOT (1.0,0.0,-3)
      CALL SYMBOL (0.0,0.0,1.0,0.0,3H014,-3)
      CALL PLOT (4.0,2.0,-3)
      CALL PLOTE
      CALL PLOTS (0.0)
      CALL PLOT (6.0,0.0,2)
      CALL PLOT (1.0,-3.0,2)
      CALL PLOT (3.0,3.0,2)
      CALL PLOT (5.0,-3.0,2)
      CALL PLOT (0.0,0.0,0)
      CALL PLOT (0.0,3.0,3)
      CALL PLOT (6.0,3.0,8)
      CALL PLOT (6.0,0.0,2)
      CALL PLOT (6.0,-3.0,20)
      CALL PLOT (9.0,0.0,-2)
      CALL PLOT (-3.0,3.0,14)
      CALL PLOT (6.0,0.0,-3)
      CALL PLOT (0.0,-3.0,-14)
      CALL PLOT (0.0,3.0,3)
      CALL PLOT (0.0,-3.0,2)
      CALL PLOT (-3.0,0.0,2)
      CALL PLOT (0.0,3.0,2)
      CALL PLOTE
      WRITE(6,20)
   20 FORMAT(21X,'= TEST =     OK'//6X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE PLOTE
      ENTRY PLOT(X,Y,M)
      ENTRY SYMBOL(XS,YS,H,TH,A,N)
      ENTRY PLOTS(SKIP)
      RETURN
      END
