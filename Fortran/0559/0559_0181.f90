MODULE mod1
TYPE ty(k,l)
  INTEGER,kind::k=2,l=5
  INTEGER::xx
END TYPE
INTERFACE OPERATOR(+)
 FUNCTION ADD(dmy1, dmy2) RESULT(res)
  import ty
  TYPE(ty(2,4)),INTENT(IN):: dmy1
  TYPE(ty(2,5)),INTENT(IN):: dmy2
  TYPE(ty(2,7))::res
 END FUNCTION
END INTERFACE
END MODULE
PROGRAM main
USE mod1
type(ty(2,4))::aa = ty(k=2,l=4)(10)
type(ty(2,5))::bb = ty(k=2)(5)
type(ty(2,7))::cc
cc = aa + bb
if(cc%xx .eq. 15)then
print*,"PASS"
else
print*,"ERROR"
endif
END PROGRAM
FUNCTION ADD(dmy1, dmy2) RESULT(res)
USE mod1
  TYPE(ty(2,4)),INTENT(IN):: dmy1
  TYPE(ty(2,5)),INTENT(IN):: dmy2
  TYPE(ty(2,7))::res
  res%xx = dmy1%xx + dmy2%xx
END FUNCTION
