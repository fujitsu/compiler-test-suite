interface
subroutine s(a)
character(*) :: a
value ::a
end subroutine
subroutine s1(a)
implicit character(*)(a)
value ::a
end subroutine
subroutine s2(a,n)
implicit character(n)(a)
value ::a
end subroutine
end interface
end
