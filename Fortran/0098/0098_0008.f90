interface 
  subroutine subb(dmy)
  integer :: dmy
  end
end interface
integer :: ii=1
call subb(ii) 
if(ii/=2) print *,"Pass"
print *,"Pass"
end
subroutine subb(dmy)
integer :: dmy 
dmy = 2
contains
end
