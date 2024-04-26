integer,pointer::a
allocate(a)
print *,'pass'
contains
subroutine s(a)
integer,pointer::a
intent(out)::a
allocate(a)
end subroutine
end
