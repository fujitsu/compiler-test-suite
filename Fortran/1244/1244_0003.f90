integer::i,j
interface ext
subroutine sss(k)
end subroutine sss
end interface
interface aaa
procedure bbb
end interface
call ext(i)
call bbb(j)
if(i/=j) print *,'err'
print *,'sngtin04:pass'
contains
subroutine bbb(l)
l=-1
end subroutine bbb
end
subroutine sss(k)
k=-1
end subroutine sss
