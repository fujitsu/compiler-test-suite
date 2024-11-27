call s1
 print *,'pass'
 end
  module m1
   interface c
     module procedure  c1,c2,c4,c8
   end interface
   integer(8),parameter::i81=1,i82=2,i84=4,i88=8
   contains
   subroutine c1(i)
   integer(1)::i
   if (i/=2)write(6,*) "NG"
   end subroutine 
   subroutine c2(i)
   integer(2)::i
   if (i/=3)write(6,*) "NG"
   end subroutine 
   subroutine c4(i)
   integer(4)::i
   if (i/=5)write(6,*) "NG"
   end subroutine 
   subroutine c8(i)
   integer(8)::i
   if (i/=9)write(6,*) "NG"
   end subroutine 
  end
  subroutine s1
   use m1
   call c(ceiling(4.1_4          ))
   call c(ceiling(1.1_4 ,kind=i81))
   call c(ceiling(2.1_4 ,kind=i82))
   call c(ceiling(4.1_4 ,kind=i84))
   call c(ceiling(8.1_4 ,kind=i88))
   call c(ceiling(4.1_8          ))
   call c(ceiling(1.1_8 ,kind=i81))
   call c(ceiling(2.1_8 ,kind=i82))
   call c(ceiling(4.1_8 ,kind=i84))
   call c(ceiling(8.1_8 ,kind=i88))
   call c(ceiling(4.1_16         ))
   call c(ceiling(1.1_16,kind=i81))
   call c(ceiling(2.1_16,kind=i82))
   call c(ceiling(4.1_16,kind=i84))
   call c(ceiling(8.1_16,kind=i88))
   end
