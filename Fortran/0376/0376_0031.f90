type x
   sequence
   integer ix
end type
interface
 subroutine s(v)
  import x
  implicit none
  type (x)::v
 end subroutine
end interface
interface
 subroutine t(v)
  import x
  type (x)::v
 end subroutine
end interface
type (x):: a
call s(a)
print *,'pass'
end
 subroutine s(v)
  implicit none
type x
   sequence
   integer ix
end type
  type (x)::v
  v%ix=1
 end subroutine

