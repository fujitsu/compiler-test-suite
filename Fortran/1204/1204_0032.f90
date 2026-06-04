subroutine s
type x
class(*),allocatable::c(:,:,:)
end type
type(x)::g(2,2,2)
m=2

     allocate(character(len=3)::g(m,m,m)%c(m,m,m))
  select type(bb=>g(m,m,m)%c)
   type is(character(len=*))
     deallocate(g(m,m,m)%c)
     allocate(character(len=3)::g(m,m,m)%c(m,m,m))
      deallocate(g(m,m,m)%c)
  end select
end

call s
print*,"sngg756q : pass"
end
