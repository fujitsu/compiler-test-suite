!integer,parameter :: iii(1) = 2
integer           :: iii(1) = 2!,ipp
associate(ippaa=>iii(int(1)))!ii)
 block
  real :: arr(ippaa)
  if (size(arr) .ne.2 ) print *,'ng',size(arr)
  if (ippaa .ne.2 ) print *,'ng',ippaa
 end block
end associate
print *,'pass'
end
