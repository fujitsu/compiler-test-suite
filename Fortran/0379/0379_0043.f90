module mod1
  integer,bind(C),volatile :: pii1
end module
module mod2
  integer,volatile,bind(C) :: pii2
end module
module mod3
  integer,bind(C) :: pii3
  volatile pii3
end module
module mod4
  volatile pii4
  integer,bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  integer,volatile :: pii5
end module
module mod6
  integer,volatile :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
