integer,parameter :: iii(2) = (/2,3/)
!integer           :: iii(1) = 2!,ipp
integer :: jjj=1
associate(ippaa=>iii(int(jjj)))!ii)
 block
  !character(ippaa) :: arr(ippaa)
  character(ippaa) :: arr(ippaa)
  if (size(arr) .ne.2 ) print *,'ng',size(arr)
  if (len(arr) .ne.2 ) print *,'ng',len(arr)
  if (ippaa .ne.2 ) print *,'ng',ippaa
 end block
end associate
print *,'pass'
end
