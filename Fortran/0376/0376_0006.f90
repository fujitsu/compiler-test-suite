subroutine foo(i)
 interface
  subroutine sub()
  end subroutine
 end interface
 procedure(sub),pointer:: i
 call i()
end subroutine

interface
 subroutine sub()
 end subroutine
 subroutine foo(i)
  interface
    subroutine sub()
    end subroutine
  end interface
  procedure(sub),pointer:: i
 end subroutine
end interface

procedure (sub), pointer :: p
p=>sub

call foo(p)

print *,'pass'

end



subroutine sub()
end subroutine
