 call s1
 print *,'pass'
 end
  module m1
  integer ::iu=11,n=5
  contains
   function bf1(ax) result(ar)
   integer ax(1:)
   integer ar(size(ax))
   ar=ax
   end function
   function bf2(ax,i) result(ar)
   integer ax(i:)
   integer ar(size(ax))
   ar=ax
   end function
  end
 subroutine s1
  use m1
  integer,dimension(n)::aa,ax
      interface cf1
         function cf1(ax) result(ar)
         integer ax(1:)
         integer ar(size(ax))
         end function
         function cf2(ax,i) result(ar)
         integer ax(i:)
         integer ar(size(ax))
         end function
      end interface
  ax=(/1,2,3,4,5/)
  aa=af1(ax)
  if (any(aa/=ax))print *,'fail'
  if (any(af1(ax)/=ax))print *,'fail'
  if (any(shape(af1(ax))/=(/5/)))print *,'fail'
  if (    size(af1(ax))/=5)print *,'fail'
  if (any(lbound(af1(ax))/=(/1/)))print *,'fail'
  if (any(ubound(af1(ax))/=(/5/)))print *,'fail'
  write(iu,*)af1(ax);call chk(iu);iu=iu+1
  aa=af2(ax,1)
  if (any(aa/=ax))print *,'fail'
  if (any(af2(ax,1)/=ax))print *,'fail'
  if (any(shape(af2(ax,1))/=(/5/)))print *,'fail'
  if (    size(af2(ax,1))/=5)print *,'fail'
  if (any(lbound(af2(ax,1))/=(/1/)))print *,'fail'
  if (any(ubound(af2(ax,1))/=(/5/)))print *,'fail'
  write(iu,*)af2(ax,1);call chk(iu);iu=iu+1
  aa=bf1(ax)
  if (any(aa/=ax))print *,'fail'
  if (any(bf1(ax)/=ax))print *,'fail'
  if (any(shape(bf1(ax))/=(/5/)))print *,'fail'
  if (    size(bf1(ax))/=5)print *,'fail'
  if (any(lbound(bf1(ax))/=(/1/)))print *,'fail'
  if (any(ubound(bf1(ax))/=(/5/)))print *,'fail'
  write(iu,*)bf1(ax);call chk(iu);iu=iu+1
  aa=bf2(ax,1)
  if (any(aa/=ax))print *,'fail'
  if (any(bf2(ax,1)/=ax))print *,'fail'
  if (any(shape(bf2(ax,1))/=(/5/)))print *,'fail'
  if (    size(bf2(ax,1))/=5)print *,'fail'
  if (any(lbound(bf2(ax,1))/=(/1/)))print *,'fail'
  if (any(ubound(bf2(ax,1))/=(/5/)))print *,'fail'
  write(iu,*)bf2(ax,1);call chk(iu);iu=iu+1
  aa=cf1(ax)
  if (any(aa/=ax))print *,'fail'
  if (any(cf1(ax)/=ax))print *,'fail'
  if (any(shape(cf1(ax))/=(/5/)))print *,'fail'
  if (    size(cf1(ax))/=5)print *,'fail'
  if (any(lbound(cf1(ax))/=(/1/)))print *,'fail'
  if (any(ubound(cf1(ax))/=(/5/)))print *,'fail'
  write(iu,*)cf1(ax);call chk(iu);iu=iu+1
  aa=cf2(ax,1)
  if (any(aa/=ax))print *,'fail'
  if (any(cf2(ax,1)/=ax))print *,'fail'
  if (any(shape(cf2(ax,1))/=(/5/)))print *,'fail'
  if (    size(cf2(ax,1))/=5)print *,'fail'
  if (any(lbound(cf2(ax,1))/=(/1/)))print *,'fail'
  if (any(ubound(cf2(ax,1))/=(/5/)))print *,'fail'
  write(iu,*)cf2(ax,1);call chk(iu);iu=iu+1
  contains
   function af1(ax) result(ar)
   integer ax(1:)
   integer ar(size(ax))
   ar=ax
   end function
   function af2(ax,i) result(ar)
   integer ax(i:)
   integer ar(size(ax))
   ar=ax
   end function
end
   function cf1(ax) result(ar)
   integer ax(1:)
   integer ar(size(ax))
   ar=ax
   end function
   function cf2(ax,i) result(ar)
   integer ax(i:)
   integer ar(size(ax))
   ar=ax
   end function
subroutine chk(iu)
  integer,dimension(5)::aa
 rewind iu
 read (iu,*) aa;if (any(aa/=(/1,2,3,4,5/)))print *,'fail'
end
