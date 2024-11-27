  integer,pointer :: int01(:)
  integer :: int02(1:3) = 1
  allocate(int01(1),source=int02(1:3))
end
