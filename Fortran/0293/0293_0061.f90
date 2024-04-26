subroutine s1
external afun
call x(afun)
end
subroutine x(afun)
integer::afun
if (afun()/=1)print *,101
end
integer function afun()
afun=1
end
call s1
print *,'pass'
end
