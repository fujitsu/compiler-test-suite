integer,parameter :: ii(1) = 2!,ipp
associate(ippaa=>ii) ! cnt OK
 block
  real :: arr(size(ippaa))!ippaa(1))
  if (size(arr) .ne.1 ) print *,'ng',size(arr)
 end block
end associate
print *,'pass'
             end
