 call s1
 print *,'pass'
 end
 subroutine s1
  call ss1
  call ss2
  call ss4
  call ss8
end
 subroutine ss1
   integer,parameter::z=1
   integer(z) ::a(3)=(/2,3,1/)
   integer(z) ::b(3,2)=reshape((/1,3,2,5,0,4/),(/3,2/))
   logical:: f=.false.
   if (maxval(a)/=3)call errtra
   if (any(maxloc(a,back=f)/=2))call errtra
   call chk1(maxval(a),3)
   call chk2(maxloc(a,back=f),2)
   if (minval(a)/=1)call errtra
   if (any(minloc(a,back=f)/=3))call errtra
   call chk1(minval(a),1)
   call chk2(minloc(a,back=f),3)
   if (maxval(b)/=5)call errtra
   if (any(maxloc(b,back=f)/=(/1,2/)))call errtra
   call chk1(maxval(b),5)
   call chk3(maxloc(b,back=f),(/1,2/))
   if (minval(b)/=0)call errtra
   if (any(minloc(b,back=f)/=(/2,2/)))call errtra
   call chk1(minval(b),0)
   call chk3(minloc(b,back=f),(/2,2/))
 contains
 subroutine chk1(i,j)
  integer(z)::i
  if (i/=j)call errtra
 end subroutine
 subroutine chk2(i,j)
  dimension i(:)
  if (any(i/=j))call errtra
 end subroutine
 subroutine chk3(i,j)
  dimension i(:),j(:)
  if (any(i/=j))call errtra
 end subroutine
 end
 subroutine ss2
   integer,parameter::z=2
   integer(z) ::a(3)=(/2,3,1/)
   integer(z) ::b(3,2)=reshape((/1,3,2,5,0,4/),(/3,2/))
   logical::f=.false.
   if (maxval(a)/=3)call errtra
   if (any(maxloc(a,back=f)/=2))call errtra
   call chk1(maxval(a),3)
   call chk2(maxloc(a,back=f),2)
   if (minval(a)/=1)call errtra
   if (any(minloc(a,back=f)/=3))call errtra
   call chk1(minval(a),1)
   call chk2(minloc(a,back=f),3)
   if (maxval(b)/=5)call errtra
   if (any(maxloc(b,back=f)/=(/1,2/)))call errtra
   call chk1(maxval(b),5)
   call chk3(maxloc(b,back=f),(/1,2/))
   if (minval(b)/=0)call errtra
   if (any(minloc(b,back=f)/=(/2,2/)))call errtra
   call chk1(minval(b),0)
   call chk3(minloc(b,back=f),(/2,2/))
 contains
 subroutine chk1(i,j)
  integer(z)::i
  if (i/=j)call errtra
 end subroutine
 subroutine chk2(i,j)
  dimension i(:)
  if (any(i/=j))call errtra
 end subroutine
 subroutine chk3(i,j)
  dimension i(:),j(:)
  if (any(i/=j))call errtra
 end subroutine
 end
 subroutine ss4
   integer,parameter::z=4
   integer(z) ::a(3)=(/2,3,1/)
   integer(z) ::b(3,2)=reshape((/1,3,2,5,0,4/),(/3,2/))
logical::f=.false.
   if (maxval(a)/=3)call errtra
   if (any(maxloc(a,back=f)/=2))call errtra
   call chk1(maxval(a),3)
   call chk2(maxloc(a,back=f),2)
   if (minval(a)/=1)call errtra
   if (any(minloc(a,back=f)/=3))call errtra
   call chk1(minval(a),1)
   call chk2(minloc(a,back=f),3)
   if (maxval(b)/=5)call errtra
   if (any(maxloc(b,back=f)/=(/1,2/)))call errtra
   call chk1(maxval(b),5)
   call chk3(maxloc(b,back=f),(/1,2/))
   if (minval(b)/=0)call errtra
   if (any(minloc(b,back=f)/=(/2,2/)))call errtra
   call chk1(minval(b),0)
   call chk3(minloc(b,back=f),(/2,2/))
 contains
 subroutine chk1(i,j)
  integer(z)::i
  if (i/=j)call errtra
 end subroutine
 subroutine chk2(i,j)
  dimension i(:)
  if (any(i/=j))call errtra
 end subroutine
 subroutine chk3(i,j)
  dimension i(:),j(:)
  if (any(i/=j))call errtra
 end subroutine
 end
 subroutine ss8
   integer,parameter::z=8
   integer(z) ::a(3)=(/2,3,1/)
   integer(z) ::b(3,2)=reshape((/1,3,2,5,0,4/),(/3,2/))
logical::f=.false.
   if (maxval(a)/=3)call errtra
   if (any(maxloc(a,back=f)/=2))call errtra
   call chk1(maxval(a),3)
   call chk2(maxloc(a,back=f),2)
   if (minval(a)/=1)call errtra
   if (any(minloc(a,back=f)/=3))call errtra
   call chk1(minval(a),1)
   call chk2(minloc(a,back=f),3)
   if (maxval(b)/=5)call errtra
   if (any(maxloc(b,back=f)/=(/1,2/)))call errtra
   call chk1(maxval(b),5)
   call chk3(maxloc(b,back=f),(/1,2/))
   if (minval(b)/=0)call errtra
   if (any(minloc(b)/=(/2,2/)))call errtra
   call chk1(minval(b),0)
   call chk3(minloc(b,back=f),(/2,2/))
 contains
 subroutine chk1(i,j)
  integer(z)::i
  if (i/=j)call errtra
 end subroutine
 subroutine chk2(i,j)
  dimension i(:)
  if (any(i/=j))call errtra
 end subroutine
 subroutine chk3(i,j)
  dimension i(:),j(:)
  if (any(i/=j))call errtra
 end subroutine
 end
subroutine errtra
print *,'error'
end
