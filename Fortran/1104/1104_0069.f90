     module mod
       type :: yase
         integer(8)::y0(3)
         character(:),allocatable::o
       end type 
       type, extends(yase) :: yxt
          character(:),allocatable::name
       end type

       type :: base
         integer(8)::b0(2)
         class(yase),allocatable::yv(:)
       end type base
       type, extends(base) :: ext
         class(yase),allocatable::zv(:)
       end type ext

       type b
         integer(8)::dmy
         class(base),allocatable::bv(:)
       end type

     contains

       subroutine s1(var, value)
         class(b), allocatable, intent(inout) :: var(:)
         class(b), intent(in) :: value(:)
         allocate(var, source=value)
       end subroutine s1
     end module mod

     subroutine w
     use mod
     class(b), allocatable :: var(:)
     type(b), allocatable :: value(:)
     allocate(value(2))
     call s1(var, value) 
     if (allocated(var(1)%bv)) print *,5001
     if (allocated(value(1)%bv)) print *,5002
     if (allocated(var(2)%bv)) print *,5011
     if (allocated(value(2)%bv)) print *,5012
     end
     call w
     print *,'sngg648p : pass'
     end 
