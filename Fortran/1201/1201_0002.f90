     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::n=100000
       character(1000)::msg

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value,stat=ist,errmsg=msg)
         if (ist/=0) then
           print *,msg
         end if
       end subroutine s1
     end module mod

     use mod
     class(base), allocatable :: var
     type(ext), allocatable :: value
     allocate(value)
     allocate(character(n)::value%name)
     value%name='2'
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       var%name(:)='1'
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='2') print *,1001
     print *,'sngg465q : pass'
     end 

