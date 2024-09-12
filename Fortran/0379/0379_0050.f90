module mod1
  integer,bind(c) :: m1
  save    :: m1
end module
module mod2
  save    :: m2
  integer,bind(c) :: m2
end module
module mod3
  integer :: m3
  bind(c) :: m3
  save    :: m3
end module
module mod4
  save    :: m4
  integer :: m4
  bind(c) :: m4
end module
print *,'ok'
end
