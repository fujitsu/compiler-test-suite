module m
  implicit none
  interface
    module subroutine sub()
    end subroutine
  end interface
  integer::ia,ib,ic
  integer::xa=1,xb=2,xc=3
  pointer (aptr , ia)
  pointer (bptr , ib)
  pointer (cptr , ic)
end
submodule(m)submod
  contains
    module procedure sub
      aptr=loc(xa)
      if (ia/=1) print *,101
      bptr=loc(xb)
      if (ib/=2) print *,102
      cptr=loc(xc)
      if (ic/=3) print *,103
    end
end submodule submod






use m
call sub
   if (ia/=1) print *,104
      if (ib/=2) print *,112
      if (ic/=3) print *,123
print *,'pass'
end
