 call sub
 print *,'pass'
 end

 subroutine sub
 integer,parameter :: ii(1) = 2
 associate(ippaa=>ii)
  block
   real :: arr(size(ippaa))
   if (size(arr).ne.1) print *,'ng'
arr=3
if (any(arr/=3)) print *,1001
  end block
  block
   real :: arr(size(ippaa)+1)
   if (size(arr).ne.2) print *,'ng'
arr=3
if (any(arr/=3)) print *,1002
  end block
  block
   real :: arr(1+size(ippaa))
   if (size(arr).ne.2) print *,'ng'
arr=3
if (any(arr/=3)) print *,1003
  end block
  block
   real :: arr(size(ippaa+1))
   if (size(arr).ne.1) print *,'ng'
arr=3
if (any(arr/=3)) print *,1004
  end block
  block
   real :: arr(size(1+ippaa))
   if (size(arr).ne.1) print *,'ng'
arr=3
if (any(arr/=3)) print *,1005
  end block
 end associate
 end subroutine

