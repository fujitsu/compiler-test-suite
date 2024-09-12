program main
IMPLICIT NONE
 interface
  recursive function fnc(i) result(res) bind(c)
   integer::i,res
  end function fnc
 end interface

print *,'pass'
end program main

recursive function fnc(i) result(res) bind(c)
 integer::i,res
  res=i
end function fnc
