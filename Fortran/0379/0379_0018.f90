integer :: F,op1,op2
F(op1,op2) = op1**2 + op2**2
enum,bind(C)
  enumerator :: iii = 10
  enumerator :: jjj = 10
end enum
if (F(iii,jjj) .eq. 200) print *,'ok'
end
