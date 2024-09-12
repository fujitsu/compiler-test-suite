module mod
  integer       ,target  :: tt
  integer       ,pointer :: aa=>tt
  procedure(sub),pointer :: pp=>sub
  procedure(sub),pointer :: p1=>null()
contains
  subroutine sub
    print *,1000
  end subroutine sub
end module mod
print *,'pass'
end
