 call s1
 print *,'pass'
 end
 subroutine s1
   type c
     character cc
   end type
   type(c):: b(5) /c('1'),c('2'),c('3'),c('4'),c('5')/
      forall (i=1:4)
        b(i+1)=b(i)
      end forall
      if (any(b%cc/=(/'1','1','2','3','4'/)))write(6,*) "NG"
      end
