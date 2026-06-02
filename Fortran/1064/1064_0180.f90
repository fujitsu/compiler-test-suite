MODULE m1
  TYPE T(K1)
     integer,kind:: K1
  END TYPE T

type ,extends(T)::T2
integer::b
end type

CONTAINS
SUBROUTINE prc1(DTV)
    CLASS(T2(2)), INTENT(IN)     :: DTV
SELECT type(DTV)
    TYPE IS(T2(2))
       print*,DTV%b
END SELECT

  END SUBROUTINE

END
print *,'pass'
end
