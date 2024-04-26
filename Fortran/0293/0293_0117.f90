subroutine s1
character(5)::a(1000)
a(1)='123 '
read(a,'(i3)') k
if (k/=123)print *,101,k
end
call s1
print *,'pass'
end
