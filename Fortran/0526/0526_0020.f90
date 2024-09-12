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
          character(*),intent(in) ::  d2
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
  module xm1
use m1
         type xt2
          integer :: ii
         end type
        
        type xt3
         integer :: ii
        end type
       
        type xt4
         integer :: ii
        end type
      
        type xt5
         integer :: ii
        end type
     
        type xty
         integer :: ii
         contains
          procedure:: xa1
          procedure:: xa2,xa3,xa4,xa5,xa6,xa7,xa8,xa9,xa10,xa11,xa12,xa13,xa14,xa15
          generic :: assignment(=) => xa1,xa2,xa3,xa4,xa5,xa6,xa7,xa8,xa9
          generic :: assignment(=) => xa10,xa11,xa12,xa13,xa14,xa15
        end type
        contains
         subroutine xa1(d1,d2)
          class(xty),intent(out) :: d1
          integer,intent(in) ::  d2
           d1%ii = d2
         end
         subroutine xa2(d1,d2)
          class(xty),intent(out) :: d1
          real,intent(in) ::  d2
          d1%ii = d2 + 1
         end
         subroutine xa3(d1,d2)
          class(xty),intent(out) :: d1
          real*8,intent(in) ::  d2
           d1%ii = d2 + 2
         end
         subroutine xa4(d1,d2)
          class(xty),intent(out) :: d1
          real*16,intent(in) ::  d2
           d1%ii = d2 + 3
         end
         subroutine xa5(d1,d2)
          class(xty),intent(out) :: d1
          integer*8,intent(in) ::  d2
           d1%ii = d2 + 4
         end
         subroutine xa6(d1,d2)
          class(xty),intent(out) :: d1
          logical,intent(in) ::  d2
           if(d2) d1%ii = 1
         end
         subroutine xa7(d1,d2)
          class(xty),intent(out) :: d1
          complex,intent(in) ::  d2
           d1%ii = d2%re + 5
         end
         subroutine xa8(d1,d2)
          class(xty),intent(out) :: d1
          complex*16,intent(in) ::  d2
           d1%ii = d2%re + 6
         end
         subroutine xa9(d1,d2)
          class(xty),intent(out) :: d1
          complex*32,intent(in) ::  d2
           d1%ii = d2%re + 7
         end
         subroutine xa10(d1,d2)
        class(xty),intent(out) :: d1
          character(*),intent(in) ::  d2
           d1%ii =  len(d2)
         end
         subroutine xa11(d1,d2)
          class(xty),intent(out) :: d1
          logical*8,intent(in) ::  d2
           if(d2) d1%ii = 2
         end
         subroutine xa12(d1,d2)
         class(xty),intent(out) :: d1
         type(xt2),intent(in) ::  d2
            d1%ii = d2%ii
         end
         subroutine xa13(d1,d2)
          class(xty),intent(out) :: d1
          type(xt3),intent(in) ::  d2
            d1%ii = d2%ii
         end
         subroutine xa14(d1,d2)
          class(xty),intent(out) :: d1
          type(xt4),intent(in) ::  d2
            d1%ii = d2%ii
         end
         subroutine xa15(d1,d2)
          class(xty),intent(out) :: d1
          type(xt5),intent(in) ::  d2
           d1%ii = d2%ii
        end
       end module
    
       module m2
       use xm1
       end
   
       module m3
       use xm1
       use m2
       end
  
       module m4
       use xm1
       use m2
       use m3
       end
 
       module m5
       use xm1
       use m2
       use m3
       use m4
       end

       module m6
       use xm1
       use m2
       use m3
       use m4
       use m5
       end

       module m7
       use m6
       end
     
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
       use  xm1,only:ty,xty
 end
  module n2
       use  m2,only:ty,xty
 end
  module n3
       use  m3,only:ty,xty
 end
  module n4
       use  m4,only:ty,xty
 end
  module n5
       use  m5,only:ty,xty
 end
  module n6
       use  m6,only:ty,xty
 end
  module n7
       use  m7,only:ty,xty
 end
  module n8
       use  m801,only:ty,xty
 end
  module n9
       use  m802,only:ty,xty
 end
  module n10
       use  m80,only:ty,xty
 end
  module n11
       use  m81,only:ty,xty
 end
  module n12
       use  m82,only:ty,xty
 end
  module n13
       use  m83,only:ty,xty
 end
  module n14
       use  m84,only:ty,xty
 end
  module n15
       use  m85,only:ty,xty
 end
  module n16
       use  m86,only:ty,xty
 end
  module n17
       use  m803,only:ty,xty
 end
  module n18
 use  m87,only:ty,xty
end
module k01
use n1
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k02
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k03
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k04
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k05
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k06
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k07
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k08
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k09
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module k10
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
module a001
       use xm1
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
use n1,only:ty,xty
use n2,only:ty,xty
use n3,only:ty,xty
use n4,only:ty,xty
use n5,only:ty,xty
use n6,only:ty,xty
use n7,only:ty,xty
use n8,only:ty,xty
use n9,only:ty,xty
use n10,only:ty,xty
use n11,only:ty,xty
use n12,only:ty,xty
use n13,only:ty,xty
use n14,only:ty,xty
use n15,only:ty,xty
use n16,only:ty,xty
use n17,only:ty,xty
use n18,only:ty,xty
end
use a001
type(ty):: v01
type(xty):: w01
v01=1
if (v01%ii/=1)print *,10001
v01=1.0
if (v01%ii/=2)print *,10002
v01=1.0_8
if (v01%ii/=3)print *,10003
v01=1.0_16
if (abs(v01%ii-4)>1)print *,10004
v01='123'
if (v01%ii/=3)print *,10005,v01%ii
v01=1.0_8
if (v01%ii/=3)print *,10006
v01=.true.
if (v01%ii/=1)print *,10007
v01=(2,-1)
if (v01%ii/=7)print *,10008
v01=(2._8,-1)
if (v01%ii/=8)print *,10008
v01=(2._16,-1)
if (v01%ii/=9)print *,10009
v01=.true._8
if (v01%ii/=2)print *,10017
v01=t2(10)
if (v01%ii/=10)print *,10018
v01=t3(10)
if (v01%ii/=10)print *,10019
v01=t4(10)
if (v01%ii/=10)print *,10030
v01=t5(10)
if (v01%ii/=10)print *,10021

w01=1
if (w01%ii/=1)print *,20001
w01=1.0
if (w01%ii/=2)print *,20002
w01=1.0_8
if (w01%ii/=3)print *,20003
w01=1.0_16
if (abs(w01%ii-4)>1)print *,20004
w01='123'
if (w01%ii/=3)print *,20005,w01%ii
w01=1.0_8
if (w01%ii/=3)print *,20006
w01=.true.
if (w01%ii/=1)print *,20007
w01=(2,-1)
if (w01%ii/=7)print *,20008
w01=(2._8,-1)
if (w01%ii/=8)print *,20008
w01=(2._16,-1)
if (w01%ii/=9)print *,20009
w01=.true._8
if (w01%ii/=2)print *,20017
w01=xt2(10)
if (w01%ii/=10)print *,20018
w01=xt3(10)
if (w01%ii/=10)print *,20019
w01=xt4(10)
if (w01%ii/=10)print *,20030
w01=xt5(10)
if (w01%ii/=10)print *,20021
print *,'pass'
end
