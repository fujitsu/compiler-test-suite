module mod1
  character(1),bind(C),dimension(10) :: pii1
end module
module mod2
  character(1),dimension(10),bind(C) :: pii2
end module
module mod3
  character(1),bind(C) :: pii3
  dimension pii3(10)
end module
module mod4
  dimension pii4(10)
  character(1),bind(C) :: pii4
end module
module mod5
  bind(C) :: pii5
  character(1),dimension(10) :: pii5
end module
module mod6
  character(1),dimension(10) :: pii6
  bind(C) :: pii6
end module
print *,'ok'
end
