subroutine foo
  intrinsic sin
  i = sin(0.1)
  block
    intrinsic sin
    j = sin(0.1)
  end block
end

subroutine bar
  sin=0.1
  block
    intrinsic sin
    i = sin(0.1)
  end block
end

program main
  call foo
  call bar
  print *,'pass'
end
