subroutine insub01()
  common n
  n=n+1
end subroutine
function func01(pd) result(ret)
   interface
     subroutine insub01()
     end subroutine
   end interface
   procedure(insub01),pointer :: ret,pd,px
   ret=>insub01
   pd=>insub01
   px=>insub01
end function
interface
function func01(pd) result(ret)
   interface
     subroutine insub01()
     end subroutine
   end interface
   procedure(insub01),pointer :: ret,pd,px
end function
subroutine insub01()
end subroutine
end interface
  common n
procedure(insub01),pointer :: ppp,pa
ppp=>func01(pa)
n=0
call ppp()
if (n/=1)print *,101,n
call pa()
if (n/=2)print *,102,n
print *,'pass'
end
