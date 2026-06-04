type t0
  integer::jj
  integer,allocatable::b
  integer,pointer::c
end type
type ty
  class(t0),allocatable :: cmp(:)
end type    
type(ty),target:: obj
allocate(t0 :: obj%cmp(3))
select type(a=>obj%cmp)
  type is (t0)
  allocate(a(1)%b)
  allocate(a(2)%b)
  allocate(a(1)%c)
  allocate(a(2)%c)
 a(1)%b =10
 a(2)%b =20
 a(1)%c =11
 a(2)%c =21
  select type(a=>obj%cmp)
    type is (t0)
     if(a(1)%b.ne.10)print*,"101"
     if(a(2)%b.ne.20)print*,"102"
     if(a(1)%c.ne.11)print*,"103"
     if(a(2)%c.ne.21)print*,"104"
     deallocate(a(1)%b)
     deallocate(a(2)%b)
     a(1)%c=>NULL()
     NULLIFY(a(2)%c)
  end select
  if(allocated(a(1)%b).neqv..false.)print*,"201"
  if(allocated(a(2)%b).neqv..false.)print*,"202"
  if(associated(a(1)%c).neqv..false.)print*,"211"
  if(associated(a(2)%c).neqv..false.)print*,"212"
  class default
     print*,"103"
end select
print*,"Pass"
end
