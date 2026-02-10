function jf01(carg) result(ifun)
character(len=*) carg(:)
character(len=1) ifun(size(carg))
intent(in) :: carg
if (len(carg).ne.1) stop '2-1'
ifun=carg
entry jf02(carg) result(ifun)
ifun=carg
end function
