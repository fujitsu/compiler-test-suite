interface 
  subroutine sub()
  end subroutine
end interface
procedure(),pointer::a=>null()
if (associated(a)) print *,1
a=>sub
call a
end

subroutine sub
  print *,'pass'
end 
