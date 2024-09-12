      EXTERNAL Jwede0_s
      INTEGER(KIND=4):: lXrangeX1(1:1),i
      data lXrangeX1/0/
      DO i=lXrangeX1(1),lXrangeX1(1)
      ENDDO
      write(6,*) ' ok'
      CALL Jwede0_s(0)
      END
      function Jwede0_s(x)
      Jwede0_s=x+x
      return
      end
