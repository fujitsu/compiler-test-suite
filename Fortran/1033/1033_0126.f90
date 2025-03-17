      program main
       integer(8)::a(3),b(3),c(3),d(3)

        a=(/1,2,3/)
        b=(/1,2,3/)
        c=(/1,2,3/)
        d=(/1,2,3/)
        a=a+b+c+d
        if (any(a/=(/4_8,8_8,12_8/))) print *,'error'
        print *,'pass'
      end
