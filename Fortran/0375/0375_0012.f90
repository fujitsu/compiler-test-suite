  interface
   subroutine a1(a)
   integer,pointer :: a
   end subroutine
  end interface

  integer,pointer:: a
  allocate(a)
  a=1
  call a1(a)
  print *,'pass'
  end

  subroutine a1(a)
  integer,pointer :: a
  call sub(a)
  end

  subroutine sub(a)
  integer,intent(out) :: a
  a = 11
  end
