call sub01()
print *,'pass' 
end

subroutine sub01()
  type ty1
    integer,pointer,dimension(:) :: ip
  end type
  type ty2
    type(ty1) :: sss
  end type
  type (ty2) :: str
  target :: it(10)
  integer :: arr(10)
  it=(/1,2,3,4,5,6,7,8,9,10/)
  call suba01(str%sss)
  arr=str%sss%ip
  contains
  subroutine suba01(ppp)
  type(ty1) :: ppp
  ppp%ip=>it
  end subroutine
  end
