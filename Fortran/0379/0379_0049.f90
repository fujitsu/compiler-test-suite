module mod1
  integer,bind(C),protected :: pii1
end module
module mod2
  integer,protected,bind(C) :: pii2
end module
module mod3
  integer,bind(C) :: pii3
  protected pii3
end module
module mod4
  protected pii4
  integer,bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  integer,protected :: pii5
end module
module mod6
  integer,protected :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
