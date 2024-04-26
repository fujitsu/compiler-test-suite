subroutine s1(k)
interface   
   subroutine xx(k)
   end subroutine
end interface
 interface gnr
   procedure  ::xx
 end interface
 call gnr(k)
end
k=1
call s1(k)
if (k/=3) print *,101,k
print *,'pass'
end
 subroutine xx(k)
 k=k+2
 end subroutine
