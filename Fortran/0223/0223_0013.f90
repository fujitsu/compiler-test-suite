module mod01
  implicit none
  type :: foo
     procedure(foo_t), pointer :: proc
  end type foo
  integer :: var

  abstract interface
     subroutine foo_t(this)
       import :: foo
       class(foo) ::this
     end subroutine foo_t
  end interface
end module mod01

module mod02
  use mod01, only: foo
end module mod02

subroutine s1
  use mod01,only:foo 
  use mod02
end
call s1
print *,'pass'
end

