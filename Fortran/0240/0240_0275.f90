call s
print *,'pass'
end
subroutine s
character (kind=selected_char_kind("ASCII")) :: c
if(kind(c).ne.1) print *,'err'
end
