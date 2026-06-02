subroutine s
type x
class(*),allocatable::cptr2
end type
type(x)::w

character(len=2)::ii(3)
character(len=3)::jj(2)

ii = ["21","22","23"]
jj = ["321","654"]

allocate(w%cptr2,source="4567")

select type(aa=>w%cptr2)
 type is(character(len=*))
  select type(bb=>w%cptr2)
   type is(character(len=*))
    if(allocated(w%cptr2)) then
     if(bb /= "4567") print*,301
     if(len(bb) /= 4) print*,302
     deallocate(w%cptr2)
     allocate(w%cptr2,mold=jj(2))
     if(allocated(w%cptr2)) then
      deallocate(w%cptr2)
      allocate(w%cptr2, source=jj(2))
     endif
    endif

   class default
    print*,914
  end select

 class default
  print*,916
end select
end
call s

print*,"sngg746q : pass"
end
