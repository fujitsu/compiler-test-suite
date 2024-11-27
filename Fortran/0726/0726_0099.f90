 call s1
 print *,'pass'
 end
 subroutine s1
      integer b(5)/1,2,3,4,5/
      forall (i=1:4)
        b(i+1)=b(i)
      end forall
      if (any(b/=(/1,1,2,3,4/)))write(6,*) "NG"
      end
