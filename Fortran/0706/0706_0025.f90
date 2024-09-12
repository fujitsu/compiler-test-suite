      call s1
      print *,'pass'
      end
      subroutine s1
implicit none
integer,parameter::j1=4,j2=8,j3=2,j4=4,j5=8
Real (kind=j1)::rk1
Real (kind=j2)::rk2
integer (kind=j3)::ik1
integer (kind=j4)::ik2
integer (kind=j5)::ik3

 write(1,*)'     Epsilon for real kind 1 = ', epsilon(rk1)
 write(1,*)'        Tiny for real kind 1 = ', tiny(rk1)
 write(1,*)'        Huge for real kind 1 = ', huge(rk1)
 write(1,*)'      Digits for real kind 1 = ', digits(rk1)
 write(1,*)'   Precision for real kind 1 = ', precision(rk1)
 write(1,*)' MaxExponent for real kind 1 = ', maxexponent(rk1)
 write(1,*)' MinExponent for real kind 1 = ', Minexponent(rk1)
 write(1,*)'       range for real kind 1 = ', range(rk1)
 write(1,*)' '
 write(1,*)'     Epsilon for real kind 2 = ', epsilon(rk2)
 write(1,*)'        Tiny for real kind 2 = ', tiny(rk2)
 write(1,*)'        Huge for real kind 2 = ', huge(rk2)
 write(1,*)'      Digits for real kind 2 = ', digits(rk2)
 write(1,*)'   Precision for real kind 2 = ', precision(rk2)
 write(1,*)' MaxExponent for real kind 2 = ', maxexponent(rk2)
 write(1,*)' MinExponent for real kind 2 = ', Minexponent(rk2)
 write(1,*)'       range for real kind 2 = ', range(rk2)
 write(1,*)' '
 write(1,*)'      Digits for integer kind 1 = ', digits(ik1)
 write(1,*)'        Huge for integer kind 1 = ', huge(ik1)
 write(1,*)' '
 write(1,*)'      Digits for integer kind 2 = ', digits(ik2)
 write(1,*)'        Huge for integer kind 2 = ', huge(ik2)
 write(1,*)' '
 write(1,*)'      Digits for integer kind 3 = ', digits(ik3)
 write(1,*)'        Huge for integer kind 3 = ', huge(ik3)
 write(1,*)' '
end
