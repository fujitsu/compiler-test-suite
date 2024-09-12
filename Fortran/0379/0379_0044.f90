module mod1
  character(1),bind(C),volatile :: pii1
end module
module mod2
  character(1),volatile,bind(C) :: pii2
end module
module mod3
  character(1),bind(C) :: pii3
  volatile pii3
end module
module mod4
  volatile pii4
  character(1),bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  character(1),volatile :: pii5
end module
module mod6
  character(1),volatile :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
