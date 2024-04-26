complex :: a=(1.,1.)
integer (kind=8)::b=2
call s(a+b)
contains
  subroutine s(x)
    complex(kind=4) :: x
    if (x == (3.00000000,1.00000000)) print *,"*** ok ***"
  endsubroutine
end
