 call s1
 print *,'pass'
 end
 subroutine s1
  integer,dimension(5)::j=(/1,2,3,4,5/)
  forall(k=1:5) j(k)=sum(j(1:k))
  if (any(j/=(/1,3,6,10,15/)))write(6,*) "NG"
      end
