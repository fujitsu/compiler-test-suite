module m
  implicit none
  interface
    module subroutine sub()
    end subroutine
  end interface
  integer::ia
  integer::x=1
  pointer (ptr , ia)
end
submodule(m)submod
  contains
    module procedure sub
      ptr=loc(x)
      if (ia/=1) print *,101
    end
end submodule submod






use m
call sub
   if (ia/=1) print *,102
print *,'pass'
end
