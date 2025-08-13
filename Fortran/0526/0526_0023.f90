module m1
   implicit none
   interface gen
     procedure::f1,f2
   end interface
          contains
           function f1()
            integer :: f1
            f1 = 10
           end
          function f2(n)
           integer,intent(in)::n
           integer :: f2
           f2 = n 
          end
         end
        
         module m2
          use m1
   implicit none
          private
          public :: gen
         end
        
        module m3
          use m1
   implicit none
          private
          public :: f2
         end
      module m4
         use m1,only:f1
         use m2
         use m3
   implicit none
        private
        public::f1,f2
      end
      module m5
      use m4
      use m2
      use m3
   implicit none
      end
      use m5
   implicit none
integer::n
         write(4,*)gen()
         write(4,*)f1()
         write(4,*)f2(1)
rewind 4
read(4,*) n;if (n/=10) print *,2001
read(4,*) n;if (n/=10) print *,2011
read(4,*) n;if (n/=1) print *,2021
    print *,'pass'
         end

