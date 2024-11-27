module mod
 integer,target,protected :: itp,itp2(2)
 integer,pointer,protected :: itpp,itpp2(:)
 integer,pointer :: ipp
 type tym
  sequence
  integer:: ippm,ippm2(2)
 end type
 type tym2
  sequence
  integer,pointer:: ippmp,ippmp2(:)
 end type
 type(tym),target,protected :: tm1
 type(tym2),target,protected :: tm2
 contains
  subroutine sub1()
   ipp=>itp
   if (associated(ipp).neqv..true.) write(6,*) "NG"
   ipp=>itp2(1)
   if (associated(ipp).neqv..true.) write(6,*) "NG"
   ipp=>tm1%ippm
   if (associated(ipp).neqv..true.) write(6,*) "NG"
   ipp=>tm1%ippm2(1)
   if (associated(ipp).neqv..true.) write(6,*) "NG"
  end subroutine
  function fnc1(i) result(res)
   integer,pointer :: i,res
   i=>itp
   if (associated(i).neqv..true.) write(6,*) "NG"
   i=>itp2(1)
   if (associated(i).neqv..true.) write(6,*) "NG"
   i=>tm1%ippm
   if (associated(i).neqv..true.) write(6,*) "NG"
   i=>tm1%ippm2(1)
   if (associated(i).neqv..true.) write(6,*) "NG"
   res=>i
  end function
  function fnc2(t1) result(res)
   type ty1
    sequence
    integer,pointer ::tp
   end type
   type(ty1) :: t1,res
   t1=ty1(itp)
   if (associated(t1%tp).neqv..true.) write(6,*) "NG"
   t1=ty1(itp2(1))
   if (associated(t1%tp).neqv..true.) write(6,*) "NG"
   t1=ty1(tm1%ippm)
   if (associated(t1%tp).neqv..true.) write(6,*) "NG"
   t1=ty1(tm1%ippm2(1))
   if (associated(t1%tp).neqv..true.) write(6,*) "NG"
   res=t1
  end function
  subroutine sub02(dtm2)
   type(tym2) :: dtm2
   dtm2 = tym2(itp, itp2)
  end subroutine
end module

use mod
type ty1
 sequence
 integer,pointer ::tp
end type
type(ty1)::t1
integer,pointer::ip,ip2
integer,target::itt=1
 ipp=>itt

 call sub02(tm2)

 ipp=>tm2%ippmp
 t1=ty1(tm2%ippmp)
 ipp=>tm2%ippmp2(1)
 t1=ty1(tm2%ippmp2(1))

 call sub1()
 ip2=>fnc1(ip)
 t1=fnc2(t1)

 print *,'pass'
end

