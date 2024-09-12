  type      EFK
    INTEGER(2_2)::qq (1,83)
  END type

type(EFK) ::XSMS

if (m()/=1) print *,'error'
print *,'pass'
CONTAINS
  function m()
  type::kc
    type(EFK) Y
  END type 
  type (kc) NOOJ
  NOOJ% Y % qq(1,83)=1
  MM=NOOJ% Y % qq(1,83)
  M=1
  END FUNCTION M
END PROGRAM
