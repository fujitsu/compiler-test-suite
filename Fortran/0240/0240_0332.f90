call s
print *,'pass'
end
subroutine s
call ss(-1)
call ss(0)
call ss(1)
end
subroutine ss(b)
integer b
if (b) 10,20,30
10 if(b.ne.-1) print *,'err1'
return
20 if(b.ne.0) print *,'err2'
return
30 if(b.ne.1) print *,'err3'
return
end
