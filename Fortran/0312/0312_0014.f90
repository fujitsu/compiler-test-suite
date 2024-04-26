 module m1
   type b
      integer ::b1(1) =(/1/) 
   end type
   contains
   subroutine chk_bs(bso)
    type(b),intent(out)::bso
    print *, bso
  end subroutine
end
print *,'PASS'
end
