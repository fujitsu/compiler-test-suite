subroutine s()
integer::i1(*)[*]
parameter(i1=[1])
print *,i1
end subroutine
call s()
end
