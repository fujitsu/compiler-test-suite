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
       77  subroutine a11(d1,d2)
       78   class(ty),intent(out) :: d1
       79   logical*8,intent(in) ::  d2
       80    if(d2) d1%ii = 2
       81  end
       82  subroutine a12(d1,d2)
       83   class(ty),intent(out) :: d1
       84   type(t2),intent(in) ::  d2
       85     d1%ii = d2%ii
       86  end
       87  subroutine a13(d1,d2)
       88   class(ty),intent(out) :: d1
       89   type(t3),intent(in) ::  d2
       90     d1%ii = d2%ii
       91  end
       92  subroutine a14(d1,d2)
       93   class(ty),intent(out) :: d1
       94   type(t4),intent(in) ::  d2
       95     d1%ii = d2%ii
       96  end
       97  subroutine a15(d1,d2)
       98   class(ty),intent(out) :: d1
       99   type(t5),intent(in) ::  d2
      100     d1%ii = d2%ii
      101  end
      102 end module
    
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
print *,'pass'
end
