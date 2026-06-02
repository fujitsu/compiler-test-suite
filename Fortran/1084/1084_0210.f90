class(*),allocatable :: cptr(:,:)
class(*),allocatable :: cptr2
allocate(cptr(2,3),source=(5,6))
allocate(cptr2,source=(15,56))
select type(xx=>cptr)
 class default
   print*,"101"
 type is(complex)
  xx(2,:)%re = 3
  xx(1,:)%im = 4
  select type(xx=>cptr)
   class default
      print*,"102"
   type is(complex)
    if (any(xx(2,:)%re .ne.3)) print*,101,xx
    if (any(xx(1,:)%im .ne.4)) print*,102,xx
   end select
   if (any(xx(2,:)%re .ne.3)) print*,201,xx
   if (any(xx(1,:)%im .ne.4)) print*,202,xx
end select
select type(xx=>cptr2)
 class default
   print*,"101"
 type is(complex)
  xx%re = 3
  xx%im = 4
end select
select type(xx=>cptr2)
 class default
   print*,"101"
 type is(complex)
  if(xx%re.ne.3)print*,"501"
  if(xx%im.ne.4)print*,"502"
  if(xx.ne.(3,4))print*,"503"
end select
   PRINT*,"PASS"
end
