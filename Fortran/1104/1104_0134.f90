     module mod
       type :: base
          integer(8)::d1
          character(:),allocatable::na
       end type base

       type, extends(base) :: ext
          integer(8)::d2
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         type(base), allocatable, intent(inout) :: var
         type(base), intent(in) :: value
         var=value
         !allocate(var,source=value)
       end subroutine s1
     end module mod

     use mod
     type (base), allocatable :: var
     type(base), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%na,source='aa')
     call s1(var, value) 
       var%na(:)='11'
       k1=loc(var%na)
     if (value%na  (:)/='aa') print *,12001
       k2=loc(value%na)
     if (k1==k2) print *,2002
     print *,'sngg811p : pass'
     end

