print *,'pass'

end

subroutine sub1(a1)
 integer,          dimension(:) :: a1
 integer,          dimension(5) :: a2
 integer, pointer, dimension(:) :: a3

 call csub1(a1)
 call csub1(a2(1:3))
 call csub1(a3)

 call csub2(a1)
 call csub2(a2(1:3))
 call csub2(a3)

 call csub3(a3)
 call csub4(a3)

contains
 subroutine csub1(i)
  integer,          dimension(:), volatile     :: i
  if (kind(i).ne.kind(i)) print *,'error'
 end subroutine
 subroutine csub2(i)
  integer,          dimension(:), asynchronous :: i
  if (kind(i).ne.kind(i)) print *,'error'
 end subroutine
 subroutine csub3(i)
  integer, pointer, dimension(:), volatile     :: i
  if (kind(i).ne.kind(i)) print *,'error'
 end subroutine
 subroutine csub4(i)
  integer, pointer, dimension(:), asynchronous :: i
  if (kind(i).ne.kind(i)) print *,'error'
 end subroutine
end
