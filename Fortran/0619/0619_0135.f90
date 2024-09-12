subroutine s1
interface
  subroutine ss(a)
  logical::a(3,2)
  end subroutine
end interface
logical::a(3,4,2)
a=.false.
call ss(any(a,dim=2))
end
call s1
print *,'pass'
end
subroutine ss(a)
logical::a(3,2)
if (any(a))print *,101
end subroutine
