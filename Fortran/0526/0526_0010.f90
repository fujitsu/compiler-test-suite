  module m1
         type t2
          integer :: ii
         end type
        
        type t3
         integer :: ii
        end type
       
       10 type t4
       11  integer :: ii
       12 end type
      
       14 type t5
       15  integer :: ii
       16 end type
     
       18 type ty
       19  integer :: ii
       20  contains
       21   procedure:: a1
       22   procedure:: a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15
       23   generic :: assignment(=) => a1,a2,a3,a4,a5,a6,a7,a8,a9
       24   generic :: assignment(=) => a10,a11,a12,a13,a14,a15
       25 end type
       26 contains
       27  subroutine a1(d1,d2)
       28   class(ty),intent(out) :: d1
       29   integer,intent(in) ::  d2
       30    d1%ii = d2
       31  end
       32  subroutine a2(d1,d2)
       33   class(ty),intent(out) :: d1
       34   real,intent(in) ::  d2
       35    d1%ii = d2 + 1
       36  end
       37  subroutine a3(d1,d2)
       38   class(ty),intent(out) :: d1
       39   real*8,intent(in) ::  d2
       40    d1%ii = d2 + 2
       41  end
       42  subroutine a4(d1,d2)
       43   class(ty),intent(out) :: d1
       44   real*16,intent(in) ::  d2
       45    d1%ii = d2 + 3
       46  end
       47  subroutine a5(d1,d2)
       48   class(ty),intent(out) :: d1
       49   integer*8,intent(in) ::  d2
       50    d1%ii = d2 + 4
       51  end
       52  subroutine a6(d1,d2)
       53   class(ty),intent(out) :: d1
       54   logical,intent(in) ::  d2
       55    if(d2) d1%ii = 1
       56  end
       57  subroutine a7(d1,d2)
       58   class(ty),intent(out) :: d1
       59   complex,intent(in) ::  d2
       60    d1%ii = d2%re + 5
       61  end
       62  subroutine a8(d1,d2)
       63   class(ty),intent(out) :: d1
       64   complex*16,intent(in) ::  d2
       65    d1%ii = d2%re + 6
       66  end
       67  subroutine a9(d1,d2)
       68   class(ty),intent(out) :: d1
       69   complex*32,intent(in) ::  d2
       70    d1%ii = d2%re + 7
       71  end
       72  subroutine a10(d1,d2)
       73   class(ty),intent(out) :: d1
       74   character,intent(in) ::  d2
       75    d1%ii =  len(d2)
       76  end
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
     
      138 module m801
      139 use m7
      140 end
      142 module m802
      143 use m801
      144 end
      150 module m80
      151 use m802
      152 end
      154 module m81
      155 use m80
      156 end
      158 module m82
      159 use m81
      160 end
      162 module m83
      163 use m82
      164 end
      166 module m84
      167 use m83
      168 end
      170 module m85
      171 use m84
      172 end
      174 module m86
      175 use m85
      176 end
      146 module m803
      147 use m802
      148 end
 module m87
use m86
end

print *,'pass'
end
