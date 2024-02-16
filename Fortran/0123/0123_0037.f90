subroutine sub1
  real(kind=4)    :: ra(5)
  complex(kind=4) :: ca(5)
  data ra(1) /1.0/
  data ra(5) /1.0/
  data ra(3) /1.0/
  data ra(2) /2.0/
  data ra(4) /2.0/  
  data ca(1) /(2.0,3.0)/
  data ca(5) /(2.0,3.0)/
  data ca(3) /(2.0,3.0)/
  data ca(2) /(2.0,4.0)/
  data ca(4) /(3.0,3.0)/

  if (ra(1) .ne. 1.0) print *, "NG"
  if (ra(2) .ne. 2.0) print *, "NG"
  if (ra(3) .ne. 1.0) print *, "NG"
  if (ra(4) .ne. 2.0) print *, "NG"
  if (ra(5) .ne. 1.0) print *, "NG"
  if (ca(1) .ne. (2.0,3.0)) print *, "NG"
  if (ca(2) .ne. (2.0,4.0)) print *, "NG"
  if (ca(3) .ne. (2.0,3.0)) print *, "NG"
  if (ca(4) .ne. (3.0,3.0)) print *, "NG"
  if (ca(5) .ne. (2.0,3.0)) print *, "NG"
end subroutine sub1

subroutine sub2
  real(kind=2)    :: ra(5)
  complex(kind=2) :: ca(5)
  data ra(1) /1.0/
  data ra(5) /1.0/
  data ra(3) /1.0/
  data ra(2) /2.0/
  data ra(4) /2.0/  
  data ca(1) /(2.0,3.0)/
  data ca(5) /(2.0,3.0)/
  data ca(3) /(2.0,3.0)/
  data ca(2) /(2.0,4.0)/
  data ca(4) /(3.0,3.0)/

  if (ra(1) .ne. 1.0) print *, "NG"
  if (ra(2) .ne. 2.0) print *, "NG"
  if (ra(3) .ne. 1.0) print *, "NG"
  if (ra(4) .ne. 2.0) print *, "NG"
  if (ra(5) .ne. 1.0) print *, "NG"
  if (ca(1) .ne. (2.0,3.0)) print *, "NG"
  if (ca(2) .ne. (2.0,4.0)) print *, "NG"
  if (ca(3) .ne. (2.0,3.0)) print *, "NG"
  if (ca(4) .ne. (3.0,3.0)) print *, "NG"
  if (ca(5) .ne. (2.0,3.0)) print *, "NG"
end subroutine sub2

call sub1
call sub2
print *,"OK"
end
