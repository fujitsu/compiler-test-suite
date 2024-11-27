 module m1
  contains
    subroutine chks(p)
    character*(1),pointer::p
    allocate(p)
    end subroutine
end
  use m1
    character*(1),pointer::p
  call    chks(p) 
print *,'pass'
end
