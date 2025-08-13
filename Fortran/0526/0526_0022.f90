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
          private
          public :: f1
         end
        
        module m3
          use m1
          private
          public :: f2
         end
      module m4
         use m2
         use m3
        private
        public::f1,f2
      end
      module m5
      use m4
      use m2
      use m3
      end
      use m5
         implicit none
         write(3,*)f1()
         write(3,*)f2()
    print *,'pass'
         end

