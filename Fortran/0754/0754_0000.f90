program main
  integer :: i
  i = 1
  i = i
  block
    import i
    i = i
  end block
end program main
