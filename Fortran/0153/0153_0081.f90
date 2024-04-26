subroutine s1
 integer,parameter::k=selected_char_kind("iso_10646")
 character(kind=4)     :: a
 a='1'
 if (kind(a)/=k) print *,101
end
call s1
print *,'pass'
end
