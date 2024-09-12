module mod01
 contains
  subroutine m01sub01()
   external              :: out_proc1
   type typ1
    procedure(), pointer, nopass  :: ext_ptr
   end type
   type (typ1) :: t1
   t1 = typ1(out_proc1)

   call m01sub03(out_proc1)

   if (abs(t1%ext_ptr() - 1) > 0.0001) print *,'error sub01'
   call m01sub02(t1%ext_ptr)
  end subroutine

  subroutine m01sub02(prp)
   procedure(real),pointer :: prp
   if (abs(prp() - 1) > 0.0001) print *,'error sub02'
  end subroutine

  subroutine m01sub03(pp)
   procedure() :: pp
   if (pp().ne.1.0) print *,'error sub03'
  end subroutine

end module

function out_proc1()
 out_proc1 = 1.0
end

use mod01
 call m01sub01()
 print *,'pass'
end

subroutine out_sub1()
 type ty1
  procedure(), pointer , nopass :: pn1
 end type
 type (ty1) :: t1
 procedure(), pointer :: pp
 pp => t1%pn1
 t1 = ty1(pp)
 t1 = ty1(t1%pn1)
end subroutine
