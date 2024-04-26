subroutine insub01()
  common //n
  n=n+1
end subroutine
function func01() result(ret)
   interface
     subroutine insub01()
     end subroutine
   end interface
   procedure(insub01),pointer :: ret
   ret=>insub01
end function
interface
function func01() result(ret)
   interface
     subroutine insub01()
     end subroutine
   end interface
   procedure(insub01),pointer :: ret
end function
subroutine insub01()
end subroutine
end interface
procedure(insub01),pointer :: ppp
  common //n
  n=0
ppp=>func01()
call ppp()
if (n/=1)print *,101,n
print *,'pass'
end

