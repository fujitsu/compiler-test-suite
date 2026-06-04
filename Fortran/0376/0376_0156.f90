interface
 subroutine yy(p)
    interface
     subroutine sub()
     end subroutine
    end interface

  procedure (sub), pointer :: p
 end subroutine
end interface

call yy(null())
print *,'pass'
end

subroutine sub()
end subroutine

subroutine yy(p)
    interface
     subroutine sub()
     end subroutine
    end interface

  procedure (sub), pointer :: p
  if (associated(p))print *,'fail'
end 

