subroutine s1()
  character(2),target ::t(5)=['11','22','33','44','55']
  integer::k=2
  call ss(t(:)(:2))
  call ss(t(:)(1:2))
  call ss(t(:)(1:k))
contains
subroutine ss(a)
  character(*)::a(5)
  if(len(a).ne.2)print*,"101"
  if(loc(a).ne.loc(t))print*,"102"
  call sss(a)
end subroutine
subroutine sss(b)
  character(2)::b(*)
  if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
  if (any(b(:3)/=t(:3))) print *,202
end subroutine
end subroutine

call s1()
print *,'pass'
end

