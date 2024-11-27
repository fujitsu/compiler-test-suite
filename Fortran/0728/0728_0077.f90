 call sub
print *,'pass'
 end
 subroutine sub
   call sub1
 end
 subroutine sub1
   a=1
end
