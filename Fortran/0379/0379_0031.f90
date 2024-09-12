module mod1
  integer,bind(C),save :: pii1
end module
module mod2
  integer,save,bind(C) :: pii2
end module
module mod3
  integer,bind(C) :: pii3
  save pii3
end module
module mod4
  save pii4
  integer,bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  integer,save :: pii5
end module
module mod6
  integer,save :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
