subroutine s1
integer:: a(3)
a=3
a=3
a=3
a=3
a=3
end  subroutine
subroutine s2
integer:: a(3)
a=3
a=3
a=3
a=3
a=3
end  subroutine
call s1
call s2
print *,'pass'
end
