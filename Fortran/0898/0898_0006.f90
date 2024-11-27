complex :: act(6)
call s1(act(1:6:2)%re)
call s1(act(1:6:2)%im)
contains
subroutine s1(rr)
real,contiguous :: rr(:)
end subroutine
end
