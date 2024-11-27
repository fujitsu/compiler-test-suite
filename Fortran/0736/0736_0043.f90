 call s1
 print *,'pass'
 end
 subroutine s1
 integer(8)::c1,c2,c3,c4
   c1=2
   c2=4
   c3=2
   c4=4
i=0
call ss1
if (i.ne.2)write(6,*) "NG"
 contains
 subroutine ss1
 if (c1.eq.c2)i=i+1 
 if (c1.eq.c3.and.&
     c2.eq.c4)i=i+2 
 end subroutine
end
