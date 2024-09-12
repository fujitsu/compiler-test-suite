subroutine s1(k)
procedure(internal)::prc
 interface gnr
   procedure  prc
 end interface
 call gnr(k)
contains
subroutine internal(k)
k=k+20
end subroutine 
end
k=1
call s1(k)
if (k/=3) print *,101,k
print *,'pass'
end
subroutine prc(k)
k=k+2
end subroutine 
