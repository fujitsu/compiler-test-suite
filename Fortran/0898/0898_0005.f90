type ty
complex :: act(5)
end type
type(ty)::obj
call s1(obj%act%re)
call s1(obj%act%im)
contains
subroutine s1(rr)
real,contiguous :: rr(:)
end subroutine
end
