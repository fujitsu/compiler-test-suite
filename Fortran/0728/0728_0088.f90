module generic
type generic_list
   private
   integer tag
   character,pointer::element(:)
end type
interface print
module procedure print_internal,print_array
end interface
interface assignment(=)
   module procedure ass_real,ass_charac
end interface
private ass_real,ass_charac,print_internal
private print_array
contains
subroutine ass_real(elem,tab)
   type (generic_list),intent(out):: elem
   real ,intent(in)::tab(:)
   call fit(elem,transfer(tab,(/' '/)),1)
end subroutine
subroutine ass_charac(elem,tab)
   type (generic_list),intent(out):: elem
   character(*) ,intent(in)::tab
   call fit(elem,transfer(tab,(/' '/)),2)
end subroutine
subroutine fit(elem,arg,itype)
   type (generic_list) elem
   character,intent(in)::arg(:)
   allocate(elem%element(size(arg)))
   elem%element=arg
   elem%tag=itype
end subroutine
subroutine print_internal(val)
type(generic_list)val
select case(val%tag)
   case(1);write(1,*)transfer(val%element,(/1./))
   case (2);write(1,*)transfer(val%element,(/' '/))
end select
end subroutine  
subroutine print_array(a)
   type (generic_list)a(:)
   do i=1,size(a)
      call print_internal(a(i))
   end do
end subroutine
end module
use generic
real::f(8)=(/(i,i=1,8)/)
type (generic_list)a(9)
a(1)='123'
a(2)=(/23.,34./)
a(3)='1234567890'
a(4)=f+1
a(5)=(/0./)
a(6)='claudia'
a(7)=(/3.14/)
a(8)='d'
a(9)=(/12./)
call print(a)
call print (a(5))
call print (a(5:4:-1))
 call chk
 print *,'pass'
end
subroutine chk
character*10 cc
rewind 1
read(1,*) i;if (i/=123)write(6,*) "NG"
read(1,*) a,b;if (abs(a-23.)>0.0001)write(6,*) "NG";if (abs(b-34.)>0.0001)write(6,*) "NG"
read(1,*) i;if (i/=1234567890)write(6,*) "NG"
read(1,*) a2,a3,a4,a5,a6,a7,a8,a9
if (any(abs((/a2,a3,a4,a5,a6,a7,a8,a9/)-(/(ii,ii=2,9)/))>0.000001))write(6,*) "NG"
read(1,*) a;if (abs(a-0.)>0.000001)write(6,*) "NG"
read(1,'(a)') cc;if (index(cc,'claudia')==0)write(6,*) "NG"
read(1,*) a;if (abs(a-3.14)>0.001)write(6,*) "NG"
read(1,'(a)') cc;if (index(cc,'d')==0)write(6,*) "NG"
read(1,*) a;if (abs(a-12.)>0.001)write(6,*) "NG"
read(1,*) a;if (abs(a-0.)>0.000001)write(6,*) "NG"
read(1,*) a;if (abs(a-0.)>0.000001)write(6,*) "NG"
read(1,*) a2,a3,a4,a5,a6,a7,a8,a9
if (any(abs((/a2,a3,a4,a5,a6,a7,a8,a9/)-(/(ii,ii=2,9)/))>0.000001))write(6,*) "NG"
end
