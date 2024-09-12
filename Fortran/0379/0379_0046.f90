module mod1
  integer,bind(C),asynchronous :: pii1
end module
module mod2
  integer,asynchronous,bind(C) :: pii2
end module
module mod3
  integer,bind(C) :: pii3
  asynchronous pii3
end module
module mod4
  asynchronous pii4
  integer,bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  integer,asynchronous :: pii5
end module
module mod6
  integer,asynchronous :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
