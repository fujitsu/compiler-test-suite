module m
  integer,parameter::k=2
  type ty
    integer :: x  =9
    complex(k) :: y=(2.3_2,8.1_2)
    real(k) :: z  =2
  contains
    procedure :: wunform
    procedure :: runform
     generic :: write(unformatted) => wunform
     generic :: read(unformatted) => runform
  end type

contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,real(aimag(dtv%y)+2,2)
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
       class (ty), intent(inout)  :: dtv
       integer,                  intent(in)     :: unit
       integer,                  intent(out)    :: iostat
       character (len=*),        intent(inout)  :: iomsg
     read (unit=unit, iostat=iostat, iomsg=iomsg) dtv%x,dtv%z
       dtv%x=dtv%x+1
    end subroutine runform
end module

program main
  USE m
  TYPE (ty) :: t1,t2
  OPEN(2,file='fort.1',form="unformatted")
if( t1%x.ne.9  ) print*,1011
if( t1%z.ne.2  ) then
 print*,2021
  print *,real(t1%z,4)
endif
if( t2%y%re.ne.2.3_2 ) then
 print*,2031
  print *,real(t1%y%re,4)
endif
if( t2%y%im.ne.8.1_2)  then
 print*,2032
  print *,real(t1%y%im,4)
endif
  WRITE(2) t1

  close(2)

  OPEN(55,file ='fort.1',form="unformatted")
  read(55)t2 
  close(55,status="delete")
if( t2%x.ne.11  ) print*,101
if( abs(t2%z-10.1_2)>0.1)then
 print*,102
  print *,real(t2%z,4)
endif
if( t2%y.ne.(2.3_2,8.1_2) ) then
 print*,103
  print *,real(t2%y%re,4)
  print *,real(t2%y%im,4)
endif
print*,"pass"
End program
