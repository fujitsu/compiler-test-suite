call s
print *,'pass'
end
subroutine s
i = nint (7.73)
if(i.ne.8) print *,'err1'
i = nint (-4.2)
if(i.ne.-4) print *,'err2'
i = nint (-7.5)
if(i.ne.-8) print *,'err3'
i = nint (2.50)
if(i.ne.3) print *,'err4'
end
