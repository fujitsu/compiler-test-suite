      program main
      type ty1
        sequence
          integer i
      end type 
      type (ty1) :: str
      type ty2
        sequence
          integer a(10)
      end type 
      type (ty2) :: stra
      type ty3
        sequence
          character*10 cha
      end type 
      type (ty3) :: stc
      type ty4
        sequence
          character*10 cha(10)
      end type 
      type (ty4) :: stca
      integer a(10)

      str%i=10
      do i=1,10
        a((str%i-10)+i)=str%i-(10-i)
      end do
      do i=1,10
        if (a(i).ne.i) print *,' err 1 - ',i
      end do

      print *,'pass'
      end   
