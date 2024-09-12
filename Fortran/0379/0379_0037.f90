module mod1
  integer,bind(C),private :: pii1
end module
module mod2
  integer,private,bind(C) :: pii2
end module
module mod3
  integer,bind(C) :: pii3
  private pii3
end module
module mod4
  private pii4
  integer,bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  integer,private :: pii5
end module
module mod6
  integer,private :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
