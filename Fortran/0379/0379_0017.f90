integer :: F,op1,op2
enum,bind(C)
  enumerator :: iii = 10
  enumerator :: jjj = 10
end enum
F(op1,op2) = op1**2 + op2**2
if (F(iii,jjj) .eq. 200) print *,'ok'
end
