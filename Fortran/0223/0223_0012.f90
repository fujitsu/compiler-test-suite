module mod01
  implicit none
  type :: foo
     procedure(foo_t), pointer :: proc
  end type foo

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
  use mod02
  use mod01
end
call s1
print *,'pass'
end

