module mod1
 type t1
  integer::i1=0
 end type

 type,extends(t1) :: t2
   integer :: i2
 end type
end module

program main
 use mod1
 interface gnr
 function fun1(dmy,dmy1)
    import t1
    type(t1), allocatable :: dmy
    type(t1),allocatable :: fun1
    real::dmy1
 end function

 function fun2(dmy,dmy1)
    import t1
    import t2
    class(t2):: dmy
    class(t1),allocatable :: fun2
    integer::dmy1
 end function

 function f1(dum)
    import t1
    import t2
    integer :: f1
    class(t1) :: dum
 end function

end interface

type(t2),allocatable :: check
type(t2),allocatable :: obj 
type(t2) :: tgt
tgt%i1=10
allocate(obj,source = tgt)
allocate(check)

print*, f1(gnr(obj,5)) 
if(gnr(gnr(obj,5)) == 1) then
    print*,'PASS'
else
    print*,'101'
endif
end program

function f1(dum)
    use mod1
    integer :: f1
    class(t1) :: dum
    if(dum%i1==5)  f1=1
end function

function fun2(dmy,dmy1)
    use mod1
    class(t2) :: dmy
    integer::dmy1
    class(t1),allocatable :: fun2
    allocate(fun2)
    fun2%i1 = dmy1
end function
