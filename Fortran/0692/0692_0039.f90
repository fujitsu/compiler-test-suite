integer k(2)
call s((i))
call z((k))
call s((k(2)))
call z((k(1:2)))
print *,'pass'
end
subroutine s(k)
end
subroutine z(k)
integer k(2)
end
