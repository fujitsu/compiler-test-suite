write(1,*) 1
rewind 1
read(1,*)kk
call s(kk)
print *,kk
contains
subroutine s(k)
intent(in)::k
call ss(k)
end subroutine
end
subroutine ss(k)
k=3
end

