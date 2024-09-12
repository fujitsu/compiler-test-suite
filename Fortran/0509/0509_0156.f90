        1                    module m1
        2                      type y
        3                       integer::v
        4                      end type
        5                      interface
        6                        subroutine  ss(p)
        7                          import w
        8                          procedure(w)::p
        9                      end
       10                    end interface
       11                     procedure(w),pointer::p
       12                    contains
       13                       type(y) function w()
       14                          w%v=100
       15                       end
       16                  end
       18                  subroutine  ss(p)
       19                         use m1,only:w
       20                         procedure(w)::p
       21                         write(1,*)p()
       22                 end
       24                 use m1
       25                 procedure(w),pointer::x
       26                  x=>w
       27                  call ss(x)
rewind 1
read(1,*) k
if (k/=100) print *,1001
print *,'pass'
                         end
