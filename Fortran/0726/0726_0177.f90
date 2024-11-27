 call s1
 print *,'pass'
 end
 subroutine s1
  integer jj(10)
  forall (i=int(1):size((/(j,j=1,10)/)),.true.)
     jj(i)=i
  end forall
  end
