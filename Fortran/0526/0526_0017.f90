 module m1
         contains
          function f1()
           integer :: f1
           f1 = 10
          end
          function f2()
           integer :: f2
          f2 = 20
         end
        end
       
        module m2
         use m1
        end
        module m3
         use m1
        end
     module m4
        use m2
        use m3
     end
     module m5
        use m2
        use m3
     end
use m4
use m5
        implicit none
integer::k
        write(2,*)f1()
        write(2,*)f2()
rewind 2
read(2,*) k;if(k/=10) print *,100
read(2,*) k;if(k/=20) print *,200
print *,'pass'
        end

