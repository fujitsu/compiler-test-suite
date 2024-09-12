module mod1
  integer,bind(C),target :: pii1 = 100
end module
module mod2
  integer,target,bind(C) :: pii2 = 100
end module
module mod3
  integer,bind(C) :: pii3 = 100
  target pii3
end module
module mod4
  target pii4
  integer,bind(C) :: pii4 = 100
end module
module mod5
  bind(C) :: pii5
  integer,target :: pii5 = 100
end module
module mod6
  integer,target :: pii6 = 100
  bind(C) :: pii6
end module

print *,'ok'
end
