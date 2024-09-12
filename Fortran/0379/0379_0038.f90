module mod1
  character(1),bind(C),private :: mii1
end module
module mod2
  character(1),private,bind(C) :: mii2
end module
module mod3
  character(1),bind(C) :: mii3
  private pii3
end module
module mod4
  private pii4
  character(1),bind(C) :: mii4
end module
module mod5
  bind(C) :: pii5
  character(1),private :: mii5
end module
module mod6
  character(1),private :: mii6
  bind(C) :: pii6
end module
print *,'ok'
end
