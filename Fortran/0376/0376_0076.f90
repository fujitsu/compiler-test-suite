subroutine s1
  type      efk
    INTEGER(2_2)::qq (1,83)
  end type

type(efk) ::XSMS

if (m()/=1) print *,'error'
CONTAINS
  function m()
  type::kc
    type(efk) Y(2)
  end type 
  type (kc) NOOJ
  NOOJ% Y(2) % qq(1,83)=1
  M=NOOJ% Y(2) % qq(1,83)
  end function
  function n()
  type::kc
    type(efk) Y(2)
  end type 
  type (kc) NOOJ
  NOOJ% Y(2) % qq(1,83)=1
  n=NOOJ% Y(2) % qq(1,83)
  end function 
end
call s1
print *,'pass'
end PROGRAM
