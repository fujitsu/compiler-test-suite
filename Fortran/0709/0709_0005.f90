 call s1
 print *,'pass'
 end
 module m1
   interface cmp
      module procedure cmp1
   end interface
   integer,parameter::x=4
   contains
    subroutine cmp1(a,b)
      character(*),dimension(:,:,:,:,:,:,:),intent(in)::a
      character(*),dimension(:),intent(in)::b
      if (any((/a/)/=(/b/)))print *,'fail'
     end subroutine
     subroutine chk(a)
      character(*),dimension(:),intent(in)::a
      if (any(lbound(a)/=(/1/)))print *,'fail'
      if (any(ubound(a)/=(/0/)))print *,'fail'
     end subroutine
 end
subroutine s1
  use m1
  i0=0;i1=1;i2=2
  call ss1
  contains
  subroutine ss1
   character(*),parameter::t='1234',f='5678'
   character(*), PARAMETER, DIMENSION(2) :: ay1=(/t,f/)
   character(*), PARAMETER, DIMENSION(2) :: ay2=(/f,t/)
   character(*), PARAMETER, DIMENSION(2) :: arrx = reshape(source=(/(ay1 ,i=1,0)/),shape=(/2/),pad=ay2)
   character(*),parameter,dimension(1,1,1,1,1,1,2)::ay3=reshape(arrx,(/1,1,1,1,1,1,2/))
   character(*),parameter,dimension(0)::ay4=(/(ay1,i=1,0)/)
   character(x),          dimension(0)::ay5=(/(ay1,i=1,0)/)
   character(x),          dimension(i1:i0)::ay6
   character(x), DIMENSION(i1:i2) :: ax1
   character(x), DIMENSION(i1:i2) :: ax2
   character(x), DIMENSION(i1:i2) :: arxx
   character(x),dimension(i1:i1,i1:i1,i1:i1,i1:i1,i1:i1,i1:i1,i1:i2)::ax3
   if (any(arrx/=ay2))print *,'fail'
   call  cmp(ay3,ay2)
 ax1=(/t,f/)
 ax2=(/f,t/)
 arxx = reshape(source=(/(ax1 ,i=i1,i0)/),shape=(/i1*2/),pad=ax2)
ax3=reshape(arxx,(/i1,i1,i1,i1,i1,i1,i1*2/))
   if (any(arxx/=ax2))print *,'fail'
   call  cmp(ax3,ax2)
   ay6=(/(ax1,i=i1,i0)/)
   if (any(lbound(ay4)/=(/1/)))print *,'fail'
   if (any(lbound(ay5)/=(/1/)))print *,'fail'
   if (any(lbound(ay6)/=(/1/)))print *,'fail'
   if (any(ubound(ay4)/=(/0/)))print *,'fail'
   if (any(ubound(ay5)/=(/0/)))print *,'fail'
   if (any(ubound(ay6)/=(/0/)))print *,'fail'
   write(16,*) ay4,ay5,ay6,999
   rewind 16
   read(16,*) ix
  if (ix/=999)print *,'fail'
  call chk(ay4)
  call chk(ay5)
  call chk(ay6)
end subroutine
end
