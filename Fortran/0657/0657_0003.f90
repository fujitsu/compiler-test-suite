call sss()
print *,'pass'
end

MODULE WRMS
      integer aaa3
      COMMON /aaacom/aaa1
      EQUIVALENCE (aaa1,aaa2)
END MODULE WRMS

MODULE BWR1
    USE WRMS
    PRIVATE
END MODULE BWR1

MODULE PWR1
    USE WRMS
END MODULE PWR1

subroutine sss()
    USE BWR1
    USE PWR1
    END

