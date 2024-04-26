subroutine s(ib)
integer:: aa,bb
pointer(ib,aa)
pointer(ib,bb)
if (aa/=1)print *,112
if (bb/=1)print *,112
end  subroutine
integer:: a
pointer(ib,aa)
ib=loc(a)
a=1
call s(ib)
print *,'pass'
end
