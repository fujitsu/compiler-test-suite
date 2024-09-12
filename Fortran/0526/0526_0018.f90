  module m1
         type t2
          integer :: ii
         end type
        
        type t3
         integer :: ii
        end type
       
        type t4
         integer :: ii
        end type
      
        type t5
         integer :: ii
        end type
     
        type ty
         integer :: ii
         contains
          procedure:: a1
          procedure:: a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15
          generic :: assignment(=) => a1,a2,a3,a4,a5,a6,a7,a8,a9
          generic :: assignment(=) => a10,a11,a12,a13,a14,a15
        end type
        contains
         subroutine a1(d1,d2)
          class(ty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2
         end
         subroutine a2(d1,d2)
          class(ty),intent(out) :: d1
          real,intent(in) ::  d2
          d1%ii = d2 + 1
         end
         subroutine a3(d1,d2)
          class(ty),intent(out) :: d1
          real*8,intent(in) ::  d2
           d1%ii = d2 + 2
         end
         subroutine a4(d1,d2)
          class(ty),intent(out) :: d1
          real*16,intent(in) ::  d2
           d1%ii = d2 + 3
         end
         subroutine a5(d1,d2)
          class(ty),intent(out) :: d1
          integer*8,intent(in) ::  d2
           d1%ii = d2 + 4
         end
         subroutine a6(d1,d2)
          class(ty),intent(out) :: d1
          logical,intent(in) ::  d2
           if(d2) d1%ii = 1
         end
         subroutine a7(d1,d2)
          class(ty),intent(out) :: d1
          complex,intent(in) ::  d2
           d1%ii = d2%re + 5
         end
         subroutine a8(d1,d2)
          class(ty),intent(out) :: d1
          complex*16,intent(in) ::  d2
           d1%ii = d2%re + 6
         end
         subroutine a9(d1,d2)
          class(ty),intent(out) :: d1
          complex*32,intent(in) ::  d2
           d1%ii = d2%re + 7
         end
         subroutine a10(d1,d2)
        class(ty),intent(out) :: d1
          character,intent(in) ::  d2
           d1%ii =  len(d2)
         end
         subroutine a11(d1,d2)
         class(ty),intent(out) :: d1
          logical*8,intent(in) ::  d2
           if(d2) d1%ii = 2
         end
         subroutine a12(d1,d2)
         class(ty),intent(out) :: d1
         type(t2),intent(in) ::  d2
           d1%ii = d2%ii
        end
        subroutine a13(d1,d2)
          class(ty),intent(out) :: d1
         type(t3),intent(in) ::  d2
           d1%ii = d2%ii
         end
        subroutine a14(d1,d2)
         class(ty),intent(out) :: d1
          type(t4),intent(in) ::  d2
           d1%ii = d2%ii
         end
         subroutine a15(d1,d2)
          class(ty),intent(out) :: d1
          type(t5),intent(in) ::  d2
           d1%ii = d2%ii
        end
       end module
    
      104 module m2
      105 use m1
      106 end
   
      108 module m3
      109 use m1
      110 use m2
      111 end
  
      113 module m4
      114 use m1
      115 use m2
      116 use m3
      117 end
 
      119 module m5
      120 use m1
      121 use m2
      122 use m3
      123 use m4
      124 end

      126 module m6
      127 use m1
      128 use m2
      129 use m3
      130 use m4
      131 use m5
      132 end

      134 module m7
      135 use m6
      136 end
     
       module m801
       use m7
       end
       module m802
       use m801
       end
       module m80
       use m802
       end
       module m81
       use m80
       end
       module m82
       use m81
       end
       module m83
       use m82
       end
       module m84
       use m83
       end
       module m85
       use m84
       end
       module m86
       use m85
       end
       module m803
       use m802
       end
 module m87
use m86
end

  module n1
       use  m1,only:ty
 end
  module n2
       use  m2,only:ty
 end
  module n3
       use  m3,only:ty
 end
  module n4
       use  m4,only:ty
 end
  module n5
       use  m5,only:ty
 end
  module n6
       use  m6,only:ty
 end
  module n7
       use  m7,only:ty
 end
  module n8
       use  m801,only:ty
 end
  module n9
       use  m802,only:ty
 end
  module n10
       use  m80,only:ty
 end
  module n11
       use  m81,only:ty
 end
  module n12
       use  m82,only:ty
 end
  module n13
       use  m83,only:ty
 end
  module n14
       use  m84,only:ty
 end
  module n15
       use  m85,only:ty
 end
  module n16
       use  m86,only:ty
 end
  module n17
       use  m803,only:ty
 end
  module n18
 use  m87,only:ty
end
module k01
use n1
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k02
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k03
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k04
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k05
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k06
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k07
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k08
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k09
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module k10
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
module a001
       use m1
      use m2
      use m3
       use m4
       use m5
       use m6
       use m7
       use m802
       use m80
       use m81
       use m82
       use m83
       use m84
       use m85
       use m802
use m86
       use  m1
       use  m3
       use  m5
       use  m7
       use  m801
       use  m802
       use  m80
       use  m82
       use  m83
       use  m84
       use  m85
       use  m86
       use  m803
use n1,only:ty
use n2,only:ty
use n3,only:ty
use n4,only:ty
use n5,only:ty
use n6,only:ty
use n7,only:ty
use n8,only:ty
use n9,only:ty
use n10,only:ty
use n11,only:ty
use n12,only:ty
use n13,only:ty
use n14,only:ty
use n15,only:ty
use n16,only:ty
use n17,only:ty
use n18,only:ty
end
use a001
print *,'pass'
end
