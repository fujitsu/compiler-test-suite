      program main
        call sub()
        print *,'pass'
      end program main

      subroutine sub()
       integer::a(5),b(10),c(3),d(5)
       data a /1,2,3,4,5/
       data b /5*5,5*10 /
        c=a(1:3)+b(1:3)
        d=a(1:5)+b(6:10)
        if (any(c/=(/6,7,8/))) print *,'error 1 ',c
        if (any(d/=(/11,12,13,14,15/))) print *,'error 1 ',d
      end
