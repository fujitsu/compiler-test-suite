      CHARACTER A,B,FUN
      DATA A,B/'+','+'/
      B = FUN(A)
      WRITE(6,*) A,B
      STOP
      END

      FUNCTION FUN(X)
      CHARACTER FUN,X
      FUN = '*'
      WRITE(6,*) X
      RETURN
      END


