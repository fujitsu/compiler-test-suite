module m1
 character(2),target:: t='12'
 character(4),target:: y='abcd'
 contains
 function f() result(a2)
 implicit character(:)(a)
 pointer::a1,a2,a3,a4,a5
 entry a3()
  a1=>t
  if (len(a1)/=2)print *,'error-1',len(a1)
  if (a1/='12')print *,'error-2',a1
  a2=>t
  if (len(a2)/=2)print *,'error-3'
  if (len(a3)/=2)print *,'error-4'
  if (a2/='12')print *,'error-5'
  if (a3/='12')print *,'error-6'
  a4=>t
  a5=>y
  if (len(a4)/=2)print *,'error-b'
  if (len(a5)/=4)print *,'error-c'
  if (a4/='12')print *,'error-9'
  if (a5/='abcd')print *,'error-a'
 end function
end
use m1
if (f()/='12')print *,'error-7'
if (a3()/='12')print *,'error-8'
print *,'pass'
end
  
