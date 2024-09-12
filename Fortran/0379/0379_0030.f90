module mod1
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),bind(C),dimension(10) :: pii1
end module
module mod2
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),dimension(10),bind(C) :: pii2
end module
module mod3
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),bind(C) :: pii3
  dimension pii3(10)
end module
module mod4
  type,bind(C) :: str
    integer :: iii
  end type
  dimension pii4(10)
  type(str),bind(C) :: pii4
end module
module mod5
  type,bind(C) :: str
    integer :: iii
  end type
  bind(C) :: pii5
  type(str),dimension(10) :: pii5
end module
module mod6
  type,bind(C) :: str
    integer :: iii
  end type
  type(str),dimension(10) :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
