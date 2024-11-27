Module STmod

 TYPE base
  integer :: i1=1
  character(8) :: ch1='a'
 END TYPE

 TYPE,extends(base) :: inherit1
  integer :: i2=2
  logical :: log2=.true.
 END TYPE

 TYPE,extends(inherit1) :: inherit2
  integer :: i3=3
  real :: r3=1.1
 END TYPE

END MODULE

Module STmod2
USE STmod

interface
function efun(dd)
 import base
 import inherit1
 CLASS(*),allocatable :: efun(:)
 CLASS(base) :: dd(5)
end function
end interface

character(8) :: st1
contains
SUBROUTINE mod_sub(dum)
 CLASS(base) :: dum(:)

SELECT TYPE(A=>efun(dum))
  TYPE IS(inherit2)
    st1 = 'in2_TI'
    print*,202
  TYPE IS(inherit1)
    if(A(4)%i1 /=5) then
      print*,200
    else
      print*,'pass'
    endif
    st1 = 'in1_TI'
  CLASS DEFAULT
    print*,'default case'
    st1 = 'CD'
    print*,203
END SELECT
END SUBROUTINE  
END MODULE

program test
 use STmod2
 interface
  subroutine sub(p1)
      use STmod2
      class (inherit1),allocatable :: p1(:)
  end subroutine
 end interface 

 class (inherit1),allocatable :: tgt1(:)
 allocate(tgt1(5))
 tgt1%i1 = 2
 tgt1(4)%i1 = 5
 call sub(tgt1)

end program test

subroutine sub(p1)
      use STmod2
 
      class (inherit1),allocatable :: p1(:)
      
      select type (p1)
        class default
         print*,100
        type is(inherit1)
         if(p1(4)%i1 /=5) print*,101
         p1%log2=.true.
         p1%i1=3
         p1(4)%i1 = 5
         p1%ch1='EIGHT2'
         p1%i2=6
         call mod_sub(p1)
        type is(inherit2)
        print*,103
      end select
end subroutine sub

function efun(dd)
USE STmod
CLASS(*),allocatable :: efun(:)
CLASS(base) :: dd(5)

select type(dd)
  type is (inherit1)
end select
allocate(efun,source=dd)
select type(efun)
  type is (inherit1)
end select
end function
