 call s1
 print *,'pass'
 end
 subroutine s1
   integer ii(3)
   call ss(ii,5)
   if (any(ii/=5)) write(6,*) "NG"
 contains
elemental subroutine ss(i,j)
   integer,intent(out):: i
   integer,intent(in):: j
   i=j
end subroutine
end
