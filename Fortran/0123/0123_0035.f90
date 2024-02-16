subroutine sub1
  real(kind=4)    :: ra(3)
  complex(kind=4) :: ca(3)
  data ra /3*1.0/
  data ca /3*(2.0,3.0)/

  if (ra(1) .ne. 1.0) print *, "NG"
  if (ra(2) .ne. 1.0) print *, "NG"
  if (ra(3) .ne. 1.0) print *, "NG"
  if (ca(1) .ne. (2.0,3.0)) print *, "NG"
  if (ca(2) .ne. (2.0,3.0)) print *, "NG"
  if (ca(3) .ne. (2.0,3.0)) print *, "NG"
end subroutine sub1

subroutine sub2
  real(kind=2)    :: ra(3)
  complex(kind=2) :: ca(3)
  data ra /3*1.0/
  data ca /3*(2.0,3.0)/

  if (ra(1) .ne. 1.0) print *, "NG"
  if (ra(2) .ne. 1.0) print *, "NG"
  if (ra(3) .ne. 1.0) print *, "NG"
  if (ca(1) .ne. (2.0,3.0)) print *, "NG"
  if (ca(2) .ne. (2.0,3.0)) print *, "NG"
  if (ca(3) .ne. (2.0,3.0)) print *, "NG"
end subroutine sub2

call sub1
call sub2
print *,"OK"
end
