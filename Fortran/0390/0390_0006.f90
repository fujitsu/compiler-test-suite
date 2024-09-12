subroutine s(c)
character*(*) c,charnb*3
call sub(charnb(c))
end
call s('123      ')
print *,'pass'
end
subroutine sub(x)
character*(*) x
if (len(x)/=3)print *,'error1'
if (x/='123')print *,'error2'
end
function charnb(x)
character(*) charnb,x
charnb=trim(x)
end


