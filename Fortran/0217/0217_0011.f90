module typedef
  integer  :: x
end module

module mod
      use typedef
  interface
    module subroutine sub(a)
      integer :: a(x)
    end subroutine
  end interface
end

print *,'pass'
end
