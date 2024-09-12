        module m0
         integer :: ii = 5
         interface gen0
           procedure::f3,f4
         end interface
         contains
           function f3()
            f3 = 100
           end function
           function f4(k)
             f4 = 200
             k = k + 1
           end function
        end
        module mod
         interface gen1
           procedure::f1,f2
         end interface
         contains
           function f1()
            f1 = 10
           end function
           function f2(k)
            f2 = 20
            k=k+2
           end function
        end
        module m2
         use mod
         integer :: ii = 2
          private
          public::pprc,m2_s
          procedure(f1),pointer :: pprc
          contains
            subroutine m2_s
               pprc=>f1
            end
        end
        module m3
          use mod
          use m0
          procedure(f2),pointer :: pprc2=>f2
          private
          public :: s3,f4,pprc2
          contains
           subroutine s3(d1)
            procedure(f2),intent(in),pointer :: d1
             n=1
             if(  d1(n)/=200)print *,2001
             if (n/=2) print *,3030
           end
        end
    use m2
    use m0
    use m3
         implicit none
         integer::n
         call s3(f4)
         n=3
         if(pprc2(n) .ne. 20) print*,"120"
         if(n .ne. 5) print*,"1201"
         if(ii .ne. 5) print*,"121",ii
         call m2_s
         if (pprc()/=10)print *,2002
         print*,"pass"
        end

