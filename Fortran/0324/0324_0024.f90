interface ab
 subroutine a(x)
  integer,external :: x
 end subroutine a
 subroutine b(xx)
  real,external :: xx
 end subroutine b
end interface
integer, external :: x
call ab(x)
print *,'pass'
end

 subroutine a(x)
  integer,external :: x
 end subroutine a
 subroutine b(xx)
  real,external :: xx
 end subroutine b

integer function x()
x=1
end
real function xx()
xx=1
end
