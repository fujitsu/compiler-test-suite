module m_foo
  implicit none
  real(kind(0d0)), pointer :: p(:,:,:)
  type grid_t
    integer, pointer :: idum(:)
  end type grid_t
  type x2
    type(grid_t) :: g2(2)
  end type
  type x3
    type(x2) :: g1(2)
  end type
  type(x3) :: grid(2)
  integer,target,save::t1(6)
end module m_foo

subroutine init
  use m_foo
  implicit none
  allocate(p(200,100,2))
  p(:,:,:) = 0.0d0
  write(1,'(a,"0x",z16.16)') 'init: loc(p) = ', loc(p)
  grid(2)%g1(2)%g2(2)%idum=>t1(::2)
   grid(2)%g1(2)%g2(2)%idum=(/21,22,23/)
  return
end subroutine init

subroutine foo(a,idum,k,aa,jdum,aaa,kdum)
  real(kind(0d0)) :: a(200,100,2),aa(200,100,2),aaa(200,100,2)
  integer :: idum(3),jdum(3),kdum(3)
  write(1,'(a,"0x",z16.16,1x,"0x",z16.16,1x,"0x",z16.16)') ' foo: loc(a) = ', loc(a),loc(aa),loc(aaa)
  select case(k)
  case(1)
    m=0
  case(2)
    m=10
  case(3)
    m=20
  end select
  if (any(idum/=(/1,2,3/)+m))print *,'error-1'
  if (any(jdum/=(/1,2,3/)+m))then
    write(6,*) "NG"
    print *,'error-12',jdum
  endif
  if (any(kdum/=(/1,2,3/)+m))print *,'error-3'
end subroutine foo

subroutine foo2(a,idum,k,aa,jdum,aaa,kdum)
  real(kind(0d0)) :: a(200,100,1),aa(200,100,1),aaa(200,100,1)
  integer :: idum(3),jdum(3),kdum(3)
  write(1,'(a,"0x",z16.16,1x,"0x",z16.16,1x,"0x",z16.16)') ' foo: loc(a) = ', loc(a),loc(aa),loc(aaa)
  select case(k)
  case(1)
    m=0
  case(2)
    m=10
  case(3)
    m=20
  end select
  if (any(idum/=(/1,2,3/)+m))print *,'error-2'
  if (any(jdum/=(/1,2,3/)+m))print *,'error-22'
  if (any(kdum/=(/1,2,3/)+m))print *,'error-23'
end subroutine foo2

subroutine foo3(a,idum,k,aa,jdum,aaa,kdum)
  real(kind(0d0)) :: a(200,100,2),aa(200,100,2),aaa(200,100,2)
  integer :: idum(*),jdum(*),kdum(*)
  write(1,'(a,"0x",z16.16,1x,"0x",z16.16,1x,"0x",z16.16)') ' foo: loc(a) = ', loc(a),loc(aa),loc(aaa)
  select case(k)
  case(1)
    m=0
  case(2)
    m=10
  case(3)
    m=20
  end select
  if (any(idum(1:3)/=21))print *,'error-3',idum(1:3)
  if (any(jdum(1:3)/=21))print *,'error-32',jdum(1:3)
  if (any(kdum(1:3)/=21))print *,'error-33',kdum(1:3)
end subroutine foo3

subroutine bar(a,b,aa,bb,aaa,bbb)
  implicit none
  real(kind(0d0)) :: a(200,100,2), b(200,100,2)
  real(kind(0d0)) :: aa(200,100,2), bb(200,100,2)
  real(kind(0d0)) :: aaa(200,100,2), bbb(200,100,2)
  write(1,'(a,"0x",z16.16)') ' bar: loc(a) = ', loc(a)
  write(1,'(a,"0x",z16.16)') ' bar: loc(aa) = ', loc(aa)
  write(1,'(a,"0x",z16.16)') ' bar: loc(aaa) = ', loc(aaa)
  return
end subroutine bar

program main
  use m_foo
  implicit none
  integer :: n
  integer,pointer :: idum1(:), idum2(:)
  real(kind(0d0)) :: t(200,100,2)

  allocate(idum1(3),idum2(3))
  call init
  idum1 = (/1,2,3/)
  idum2 = (/11,12,13/)
  n=1

  call foo(p,idum2,2,p,idum2,p,idum2)
  call foo(p(:,:,:),idum1,1,p(:,:,:),idum1,p(:,:,:),idum1)
  call foo2(p(:,:,n),idum1,1,p(:,:,n),idum1,p(:,:,n),idum1)            
  call foo(p,max(idum1,idum2,grid(2)%g1(2)%g2(2)%idum),3,p,max(idum1,idum2,grid(2)%g1(2)%g2(2)%idum),p,max(idum1,idum2,grid(2)%g1(2)%g2(2)%idum))
  call foo(p,max(grid(2)%g1(2)%g2(2)%idum,idum2,idum1),3,p,max(grid(2)%g1(2)%g2(2)%idum,idum2,idum1),p,max(grid(2)%g1(2)%g2(2)%idum,idum2,idum1))
  call foo(p,max(grid(2)%g1(2)%g2(2)%idum(n:3),idum2,idum1),3,p,max(idum1,grid(2)%g1(2)%g2(2)%idum(n:3),idum2),p,max(grid(2)%g1(2)%g2(2)%idum(n:3),idum2,idum1))  
  call foo(p,max(grid(2)%g1(2)%g2(2)%idum(n:3:n),idum2(:),idum1),3,p,max(idum1,grid(2)%g1(2)%g2(2)%idum(n:3:n),idum2(:)),p,max(grid(2)%g1(2)%g2(2)%idum(n:3:n),idum2(:),idum1))  
  call foo3(p,max(grid(2)%g1(2)%g2(2)%idum(n),idum1,idum2),3,p,max(idum1,grid(2)%g1(2)%g2(2)%idum(n),idum2),p,max(grid(2)%g1(2)%g2(2)%idum(n),idum1,idum2)) 

  call bar(p,t,p,t,p,t)
  call bar(p,t(:,:,:),p,t(:,:,:),p,t(:,:,:))
print *,'pass'
end program main
