call sub01()
call sub02()
call sub03()
print *,'pass'
end
subroutine sub01()
 integer,parameter :: ii(1) = 2
 associate(ipp=>ii(1))
  block
     real :: arr(ipp-1:ipp) 
if (size(arr) .ne.2) print *,'err',size(arr)
  end block
 end associate
end
subroutine sub02()
 integer           :: ii(1) = 2
 associate(ipp=>ii(1))
  block
     real :: brr(ipp-1:ipp)
if (size(brr) .ne.2) print *,'err',size(brr)
  end block
 end associate
end
subroutine sub03()
 integer           :: ii = 2
 associate(ipp=>ii)
  block
     real :: crr(ipp-1:ipp)
if (size(crr) .ne.2) print *,'err',size(crr)
  end block
 end associate
end
