subroutine s1(i)
external :: i
call i
end subroutine
subroutine s2(i)
external :: i
pointer::i
if (associated(i)) call i
end subroutine

interface
  subroutine s2(i)
  external :: i
  pointer::i
  end subroutine
end interface
external:: t1
external:: t2
procedure(),pointer::tt2
tt2=>t2
call s1(t1 )
call s1(tt2 )
call s2(tt2 )
call s2(null() )
print *,'pass'
end

subroutine t1
end
subroutine t2
end
