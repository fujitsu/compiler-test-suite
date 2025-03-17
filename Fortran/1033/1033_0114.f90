      program main
        call s()
        print *,'pass'
      end program main

      subroutine s()
       integer::a(5),b(10),c(5)
       equivalence(a(1),b(1))
       equivalence(b(6),c(1))
        b=(/1,2,3,4,5,6,7,8,9,10/)
        if (any(a/=(/1,2,3,4,5/))) print *,'error-1 ',a
        if (any(c/=(/6,7,8,9,10/))) print *,'error-2 ',c
        a=a+b(1:5)
        c=c+b(6:10)
        if (any(a/=(/2,4,6,8,10/))) print *,'error-3 ',a
        if (any(c/=(/12,14,16,18,20/))) print *,'error-4 ',c
        if (any(b/=(/2,4,6,8,10,12,14,16,18,20/))) print *,'error-5 ',a
      end
