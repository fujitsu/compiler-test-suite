module mod
  contains
  subroutine modsub01(arg1,arg2) bind(C)
    integer :: arg1(:)
    integer :: arg2(1:,5:)
  end subroutine
end module
subroutine sub(arg1,arg2) bind(C)
  integer :: arg1(:)
  integer :: arg2(1:,5:)
end subroutine
end
