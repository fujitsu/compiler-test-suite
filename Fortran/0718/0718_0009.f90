subroutine sub01() bind(C)
  pointer :: p01
  entry ent01(p01) bind(C)
end subroutine
subroutine sub02() bind(C)
  allocatable :: p02(:)
  entry ent02(p02) bind(C)
end subroutine
subroutine sub03() bind(C)
  optional :: p03
  entry ent03(p03) bind(C)
end subroutine
end
