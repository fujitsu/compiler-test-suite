interface
  subroutine sub0(k)
  end subroutine
  subroutine sub1(sub0)
   integer,pointer::sub0
  end subroutine
end interface
call sub0(2)
call sub1(null())
print *,'pass'
end
  subroutine sub1(sub0)
   integer,pointer::sub0
   if (associated(sub0))print *,101
  end subroutine
  subroutine sub0(k)
  if (k/=2)print *,k
  end subroutine

