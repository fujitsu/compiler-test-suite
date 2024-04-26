  use iso_c_binding
  logical :: a(10)
  logical(1) ::  l1
  logical(2) ::  l2
  logical(4) ::  l4
  logical(8) ::  l8

  if (c_sizeof(a) /= 40) print *,"a NG"
  if (c_sizeof(l1) /= 1) print *,"l1 NG"
  if (c_sizeof(l2) /= 2) print *,"l2 NG"
  if (c_sizeof(l4) /= 4) print *,"l4 NG"
  if (c_sizeof(l8) /= 8) print *,"l8 NG"

  if (c_sizeof(pa) /= 4) print *,"pa NG"
  if (c_sizeof(pl1) /= 4) print *,"pl1 NG"
  if (c_sizeof(pl2) /= 4) print *,"pl2 NG"
  if (c_sizeof(pl4) /= 4) print *,"pl4 NG"
  if (c_sizeof(pl8) /= 4) print *,"pl8 NG"
  print *,"pass"
  end
