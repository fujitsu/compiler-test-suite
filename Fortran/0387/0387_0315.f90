implicit type(z)(p,s)
type z
  integer zz
end type
interface
 subroutine sub1()
 end subroutine
end interface

type a
 integer :: x
 procedure(sub1),nopass,pointer:: p
end type

procedure(sub1),pointer:: p2

type (a):: p1
call foo(null(),1)
p1%p => sub1
call foo(p1%p,2)
p2 => sub1
call foo(p2,3)
call foo(p3(),3)
print *,'pass'
contains
 function p3()
   implicit character(a-z)
   procedure(sub1),pointer:: p3
   p3 => sub1
 end function
  subroutine foo(p,i)
   common n
   procedure(sub1),pointer:: p
   select case(i)
    case (1)
      if (associated(p))print *,'error-1'
    case default
      if (.not.associated(p))print *,'error-2'
      if (.not.associated(p,sub1))print *,'error-3'
      n=0
      call p()
      if (n/=1)print *,'error-4'
   end select
  end subroutine
end

subroutine sub1()
   common n
   n=1
end
