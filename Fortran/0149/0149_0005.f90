program main
  common / common_block / i
  block
    integer :: common_block
    save common_block
    common_block = 1
    common_block = common_block
  end block
  print *,'pass'
end
