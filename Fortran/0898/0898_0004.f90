complex :: act(5)
call s1(act%re)
call s1(act%im)
contains
subroutine s1(rr)
real,contiguous :: rr(:)
end subroutine
end
