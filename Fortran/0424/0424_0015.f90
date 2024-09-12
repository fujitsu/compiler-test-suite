interface 
  subroutine sub()
  end subroutine
end interface
pointer :: a
procedure()::a=>null()
if (associated(a)) print *,1
a=>sub
call a
end

subroutine sub
  print *,'pass'
end 
