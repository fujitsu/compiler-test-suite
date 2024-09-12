call sss()
print *,'pass'
end

MODULE WRMS
PUBLIC aaa3
      integer aaa3,aa,aaa
      COMMON /aaaaaaaa/aaa1

      EQUIVALENCE (aaa1,aaa2)
      EQUIVALENCE (aaa3,aaa2)
private aaa1
END MODULE WRMS

MODULE BWR1
    USE WRMS
    PRIVATE
END MODULE BWR1

MODULE PWR1
    USE WRMS
    PRIVATE
END MODULE PWR1

subroutine sss()
end
module mommm
    USE BWR1
    USE PWR1
    PRIVATE
    END

