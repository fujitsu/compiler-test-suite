Module mod_opt
Type t_opt
  Type(t_opt), Pointer :: next => NULL()
End Type
End Module

MODULE OPT_CHAIN
IMPLICIT NONE
TYPE CHAIN
  CHARACTER*128 :: NAME  = ""
END TYPE
END MODULE

Program mod_test
  Use Mod_opt
  Implicit None

Interface
Subroutine sub
  Use opt_chain
End Subroutine
End Interface

  Type a
   sequence
   Integer :: ntimes = 1
  End Type
print *,'pass'

Contains
  
  Subroutine Setup(  )
    Type(a) :: defn
    call ss(defn)
  End Subroutine  
End Program

subroutine ss(d)
  Type a
   sequence
   Integer :: ntimes 
  End Type
  type(a)::d
end
