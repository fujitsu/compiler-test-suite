interface
function jf01(carg) result(ifun)
character(len=*) carg(:)
character(len=1) ifun(size(carg))
intent(in) :: carg
end function jf01
function jf02(carg) result(ifun)
character(len=*) carg(:)
character(len=1) ifun(size(carg))
intent(in) :: carg
end function jf02
end interface

character(1)::a(3)=(/'1','2','3'/)
if (any(jf01(a)/=a)) then
  print *,"NG"
else
  print *, 'PASS'
endif
end
