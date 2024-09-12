call s1
print *,'pass'
contains
subroutine s1
  real(8),allocatable::res(:,:)
  real(8)::aaa(2,0)
  real(8)::bbb(0,1)
  allocate(res(2,1))
  res = matmul(aaa,bbb)
  if(size(res)/=2) print *,'err'
end subroutine s1
end
