subroutine s1
type::O_CALC
  INTEGER(2_2)::qq 
END type O_CALC
  type      EFK
    type(O_CALC) O(1,83) 
  END type
type g1
  type (EFK):: ef
END type
type(g1) ::XSMS

if (m()/=4) print *,'error'
CONTAINS
  function m()
  type::kc
    type(g1) Y
  END type 
  type (kc) NOOJ
  NOOJ% Y % ef % O(1,83)%qq=1
  M=4_4
  END FUNCTION M
end
call s1
print *,'pass'
END
