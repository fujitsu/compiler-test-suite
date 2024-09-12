module mod1
  integer,bind(C),public :: pii1
end module
module mod2
  integer,public,bind(C) :: pii2
end module
module mod3
  integer,bind(C) :: pii3
  public pii3
end module
module mod4
  public pii4
  integer,bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  integer,public :: pii5
end module
module mod6
  integer,public :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
