 module m1
 contains
   subroutine sub(a,ians)
    real ,optional,dimension(*)::a
    if (present(a))a(1:2)=3
    ians=3
   end subroutine
 end module

 use m1
 call sub(ians=i)
 print *,'pass'
 end
