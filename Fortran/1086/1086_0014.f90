!integer,parameter :: ii(1) = 2!,ipp
integer           :: ii(1) = 2!,ipp
associate(ippaa=>(/1,2/))!ii)
 block
  real :: arr(size(ippaa))!ippaa(1))
  if (ippaa(1) .ne.1 ) print *,'ng',ippaa(1)
 end block
end associate
print *,'pass'
end
