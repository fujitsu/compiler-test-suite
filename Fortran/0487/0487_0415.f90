        1       module m1
        2       interface
        3         integer function afun(d1)
        4         end function

        6         function afun2(d1)
        7          integer afun2(2)
        8         end function
        9       end interface

       11       interface gen
       12          procedure :: s1,s2
       13       end interface

       15        contains

       17        subroutine s1(f)
                  procedure(afun2):: f
       23        if (any(f(1.0)/=[1,11])) print *,101
       24       end subroutine

       26       subroutine s2(f)
                  procedure(afun):: f
       31       if (f(2.0)/=2) print *,102
       32       end subroutine

       34       subroutine s3()
       35         call gen( afun2)
       36         call gen( afun )
       37       end subroutine
       38       end

       40       use m1

       42       call gen( afun2)
       43       call gen( afun )
       44       call s3()
       45       print *,'pass'
       46       end

       48       integer function afun(d1)
       49         afun=d1
       50       end function
       52       function afun2(d1)
       53        integer afun2(2)
       54        afun2=[d1,d1+10]
       55       end function
