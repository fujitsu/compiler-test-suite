module mod1
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),bind(C),target :: pii1
end module
module mod2
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),target,bind(C) :: pii2
end module
module mod3
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),bind(C) :: pii3
  target pii3
end module
module mod4
  type,bind(C) :: str
    integer :: iii
  end type
  target pii4
  type(str),bind(C) :: pii4
end module
module mod5
  type,bind(C) :: str
    integer :: iii
  end type
  bind(C) :: pii5
  type(str),target :: pii5
end module
module mod6
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),target :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end