module mod1
  character(1),bind(C),save :: pii1
end module
module mod2
  character(1),save,bind(C) :: pii2
end module
module mod3
  character(1),bind(C) :: pii3
  save pii3
end module
module mod4
  save pii4
  character(1),bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  character(1),save :: pii5
end module
module mod6
  character(1),save :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
