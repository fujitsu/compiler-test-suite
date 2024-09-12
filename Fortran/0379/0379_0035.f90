module mod1
  character(1),bind(C),public :: pii1
end module
module mod2
  character(1),public,bind(C) :: pii2
end module
module mod3
  character(1),bind(C) :: pii3
  public pii3
end module
module mod4
  public pii4
  character(1),bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  character(1),public :: pii5
end module
module mod6
  character(1),public :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
