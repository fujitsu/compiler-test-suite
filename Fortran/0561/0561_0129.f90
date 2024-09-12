module m
  type ty
    integer :: x    =9
    real :: y=8
  contains
    procedure :: wunform
     generic :: write(unformatted) => wunform
  end type
  integer,save :: a=1
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      a=a+dtv%x
      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+dtv%y
    end subroutine
end module

program main
call ss

contains
subroutine ss
  USE m
  type ct
   type(ty) :: cmp
  end type

  type(ct) :: bb
  TYPE (ty) :: t1(6,7),oo
  open(2,file ='fort.37',form="unformatted")
  WRITE(2) oo
  WRITE(2) t1
  WRITE(2) t1(2,5)
  WRITE(2) t1(:,:)
  WRITE(2) t1(:,2)
  WRITE(2) t1(::2,::2)
  WRITE(2) t1([2,6,3],2)
  WRITE(2) bb
  WRITE(2) bb%cmp
  WRITE(2) ty(2,4)
  WRITE(2) [ty(2,4)]
  WRITE(2) (/oo,ty(2,4) /)
  WRITE(2) (/oo,oo /)
  close(2,status="delete")
  if(a.ne.1015)print*,101
  print*,"pass"
end subroutine
End program
