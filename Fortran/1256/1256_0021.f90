integer,parameter :: t01(1)=3
integer,parameter :: t02=3
integer :: t03(1)=3
integer :: t04=3
associate (src =>t01(1))
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1001
 end block
end associate
associate (src =>t02)
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1002
 end block
end associate
associate (src =>t03(1))
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1003
 end block
end associate
associate (src =>t04)
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1004
 end block
end associate
associate (src =>t01(1))
 block
   real :: cSum(int(src))
   if (size(cSum)/=3) print *,1001
 end block
end associate
associate (src =>t02)
 block
   real :: cSum(int(src))
   if (size(cSum)/=3) print *,1002
 end block
end associate
associate (src =>t03(1))
 block
   real :: cSum(int(src))
   if (size(cSum)/=3) print *,1003
 end block
end associate
associate (src =>t04)
 block
   real :: cSum(int(src))
   if (size(cSum)/=3) print *,1004
 end block
end associate
associate (src =>int(t01(1)))
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1001
 end block
end associate
associate (src =>int(t02))
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1002
 end block
end associate
associate (src =>int(t03(1)))
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1003
 end block
end associate
associate (src =>int(t04))
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1004
 end block
end associate
associate (src =>t01(1)+0)
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1001
 end block
end associate
associate (src =>t02+0)
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1002
 end block
end associate
associate (src =>t03(1)+0)
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1003
 end block
end associate
associate (src =>t04+0)
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1004
 end block
end associate

print *,'pass'
end
