         call s1
         print *,'pass'
         end
         subroutine s1
         type a
           sequence
           integer ::a1=1
         end type
         type (a):: w5,w6=a(11)
         equivalence (w5,w6)
         if(w5%a1 /= 11) print *,"ng w5%a1=",w5%a1
         if(w6%a1 /= 11) print *,"ng w6%a1=",w6%a1
         end
