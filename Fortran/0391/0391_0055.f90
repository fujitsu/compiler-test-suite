subroutine s1(*)
call s2(*1)
print *,101
1 continue
return 1
contains
subroutine s2(*)
return 1
end subroutine
end subroutine
call s1(*10)
print *,102
10 continue
print *,'pass'
end
subroutine ts1
call ts2
contains
subroutine ts2
end subroutine
end subroutine
