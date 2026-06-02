 call s1
 print *,'pass'
 end
  module m1
  integer ::iu=11
  contains
   function bf1(ax) result(ar)
   integer ax(11:)
   integer ar(lbound(dim=1,array=ax))
   ar=(/ax,(/(k,k=6,11)/)/)
   end function
   function bf2(ax,i) result(ar)
   integer ax(i:)
   integer ar(lbound(dim=1,array=ax))
   ar=(/ax,(/(k,k=6,11)/)/)
   end function
  end
 subroutine s1
  use m1
  integer,dimension(5)::ax=(/1,2,3,4,5/)
  integer,dimension(11)::ay=(/(k,k=1,11)/),aa
      interface cf1
         function cf1(ax) result(ar)
         integer ax(11:)
         integer ar(lbound(dim=1,array=ax))
         end function
         function cf2(ax,i) result(ar)
         integer ax(i:)
         integer ar(lbound(dim=1,array=ax))
         end function
      end interface
  aa=af1(ax)
  if (any(aa/=ay))print *,'fail'
  if (any(af1(ax)/=ay))print *,'fail'
  if (any(shape(af1(ax))/=(/11/)))print *,'fail'
  write(iu,*)af1(ax);call chk(iu);iu=iu+1
  aa=af2(ax,11)
  if (any(aa/=ay))print *,'fail'
  if (any(af2(ax,11)/=ay))print *,'fail'
  if (any(shape(af2(ax,11))/=(/11/)))print *,'fail'
  write(iu,*)af2(ax,11);call chk(iu);iu=iu+1
  aa=bf1(ax)
  if (any(aa/=ay))print *,'fail'
  if (any(bf1(ax)/=ay))print *,'fail'
  if (any(shape(bf1(ax))/=(/11/)))print *,'fail'
  write(iu,*)bf1(ax);call chk(iu);iu=iu+1
  aa=bf2(ax,11)
  if (any(aa/=ay))print *,'fail'
  if (any(bf2(ax,11)/=ay))print *,'fail'
  if (any(shape(bf2(ax,11))/=(/11/)))print *,'fail'
  write(iu,*)bf2(ax,11);call chk(iu);iu=iu+1
  aa=cf1(ax)
  if (any(aa/=ay))print *,'fail'
  if (any(cf1(ax)/=ay))print *,'fail'
  if (any(shape(cf1(ax))/=(/11/)))print *,'fail'
  write(iu,*)cf1(ax);call chk(iu);iu=iu+1
  aa=cf2(ax,11)
  if (any(aa/=ay))print *,'fail'
  if (any(cf2(ax,11)/=ay))print *,'fail'
  if (any(shape(cf2(ax,11))/=(/11/)))print *,'fail'
  write(iu,*)cf2(ax,11);call chk(iu);iu=iu+1
  contains
   function af1(ax) result(ar)
   integer ax(11:)
   integer ar(lbound(dim=1,array=ax))
   ar=(/ax,(/(k,k=6,11)/)/)
   end function
   function af2(ax,i) result(ar)
   integer ax(i:)
   integer ar(lbound(dim=1,array=ax))
   ar=(/ax,(/(k,k=6,11)/)/)
   end function
end
   function cf1(ax) result(ar)
   integer ax(11:)
   integer ar(lbound(dim=1,array=ax))
   ar=(/ax,(/(k,k=6,11)/)/)
   end function
   function cf2(ax,i) result(ar)
   integer ax(i:)
   integer ar(lbound(dim=1,array=ax))
   ar=(/ax,(/(k,k=6,11)/)/)
   end function
subroutine chk(iu)
  integer,dimension(11)::aa
 rewind iu
 read (iu,*) aa;if (any(aa/=(/(k,k=1,11)/)))print *,'fail'
end
