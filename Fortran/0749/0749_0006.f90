call s("abc")
contains
subroutine s(a)
character(*)::a
character(:),allocatable::b,c
allocate(c,source=a)
allocate(b,mold=a)
print *,'#'//b//'#',len(b)
print *,c,len(c)
end subroutine
end
