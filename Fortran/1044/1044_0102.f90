call aaaaa
print *,'pass'
contains
subroutine aaaaa
if(aa(trim(' a b ')).ne.bb(5)) print *,'err1'
end subroutine
function aa(a) result(res)
character*4 a,res
res=a
end function
function bb(i) result(res)
character(len=i)::res
res=trim(' a b ')
end function
end

