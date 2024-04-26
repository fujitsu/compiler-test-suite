call s('123&
   !12345
&abc')
print *,'pass'
end
subroutine s(x)
character*(*) x
if (len(x)/=6)print *,1,len(x)
if (x/='123abc')print *,2,x
end

