interface
 subroutine yy(p,i)
    interface
     subroutine sub()
     end subroutine
    end interface

  procedure (sub), pointer :: p
  optional::p
 end subroutine
end interface

call yy(null(),1)
call yy(      i=0)
print *,'pass'
end

subroutine sub()
end subroutine

subroutine yy(p,i)
    interface
     subroutine sub()
     end subroutine
    end interface

  procedure (sub), pointer :: p
  optional::p
  if (present(p)) then
   if (i/=1)print *,'fail'
   if (associated(p))print *,'fail'
  else 
   if (i/=0)print *,'fail'
  endif
end 

