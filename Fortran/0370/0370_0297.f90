
recursive subroutine sub(in)
  implicit none
  integer::in
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)
  type ty1
     integer,pointer :: p1 =>t1
     logical :: s0 = .TRUE.
     integer,pointer :: p2(:) =>ta
  end type ty1
  type (ty1) :: str

  str%p2(1) = str%p2(1) + 2
  
  in = in+1
  print *,str%p1, str%p2
  if (in.lt.5) call sub(in)
end subroutine sub

program xyz
  integer::num=1
  call sub (num)
end program
