 call s1
 print *,'pass'
 end
 subroutine s1
 i=1
 call sub(k)
 if (k/=10)write(6,*) "NG"
  contains
     pure subroutine sub(k)
     intent(out)::k
       k=i+9
     end subroutine
   end
