module m_foo
  implicit none
  real(kind(0d0)), pointer :: p(:,:,:)
  type grid_t
    integer, pointer :: idum(:)
  end type grid_t
  type(grid_t) :: grid
  integer,target,save::t1(6)
end module m_foo

subroutine init
  use m_foo
  allocate(p(200,100,2))
  p(:,:,:) = reshape((/(n,n=1,size(p))/),(/200,100,2/))
  write(30,'(a,"0x",z16.16)') 'init: loc(p) = ', loc(p)
  grid%idum=>t1(::2)
   grid%idum=(/21,22,23/)
  return
end subroutine init

subroutine foo(a,idum,k,aa,jdum,a2,j2,a3,j3)
  real(kind(0d0)),dimension(200,100,2):: a,aa,a2,a3
  integer :: idum(3),jdum(3),j2(3),j3(3)
  write(30,'(a,"0x",z16.16,1x,"0x",z16.16)') ' foo: loc(a) = ', loc(a),loc(aa)
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
  if (any(j2/=2*((/1,2,3/)+m)))write(6,*) "NG"
  if (any(j3/=3*((/1,2,3/)+m)))write(6,*) "NG"
  if (any(abs((/a/)-(/(n,n=1,size(a))/))>0.001))write(6,*) "NG"
  if (any(abs((/aa/)-(/(n,n=1,size(a))/))>0.001))write(6,*) "NG"
  if (any(abs((/a2/)-2*(/(n,n=1,size(a))/))>0.001))write(6,*) "NG"
  if (any(abs((/a3/)-3*(/(n,n=1,size(a))/))>0.001))write(6,*) "NG"
end subroutine foo

subroutine foo2(a,idum,k,aa,jdum)
  real(kind(0d0)) :: a(200,100,1),aa(200,100,1)
  integer :: idum(3),jdum(3)
  write(30,'(a,"0x",z16.16,1x,"0x",z16.16)') ' foo: loc(a) = ', loc(a),loc(aa)
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
end subroutine foo2

subroutine foo3(a,idum,k,aa,jdum)
  real(kind(0d0)) :: a(200,100,2),aa(200,100,2)
  integer :: idum(*),jdum(*)
  write(30,'(a,"0x",z16.16,1x,"0x",z16.16)') ' foo3: loc(a) = ', loc(a),loc(aa)
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
end subroutine foo3

subroutine bar(a,b,aa,bb)
  implicit none
  real(kind(0d0)) :: a(200,100,2), b(200,100,2)
  real(kind(0d0)) :: aa(200,100,2), bb(200,100,2)
  write(30,'(a,"0x",z16.16)') ' bar: loc(a) = ', loc(a)
  write(30,'(a,"0x",z16.16)') ' bar: loc(aa) = ', loc(aa)
  return
end subroutine bar

program main
  use m_foo
  implicit none
  integer :: n
  integer,pointer :: idum1(:), idum2(:)
  real(kind(0d0)) :: t(200,100,2)
  integer ::h(2,2,2)
  type u
    integer ::h(2,2,2)
  end type
  type uu
    type(u) hs
    type(u) ha(2,2,2)
  end type
  type(uu)::hs
  type(uu)::ha(2,2,2)

  allocate(idum1(3),idum2(3))
  call init
  idum1 = (/1,2,3/)
  idum2 = (/11,12,13/)
  n=1
  h(2,2,2)=2
  h(2,2,1)=1
  h(1,2,1)=0
  h(1,1,1)=3
  ha(2,2,2)%ha(2,2,2)%h(2,2,2)=2
  ha(2,2,2)%ha(2,2,2)%h(2,2,1)=1
  ha(2,2,2)%ha(2,2,2)%h(1,2,1)=0
  ha(2,2,2)%ha(2,2,2)%h(1,1,1)=3

write(30,*)1
  call foo(p,max(idum1,idum2),2,p,max(idum1,idum2),p+p,idum2+idum2,p+p+p,idum2+idum2+idum2)   
  call foo(p,max(idum1,idum2),2,p,max(idum1,idum2),max(p+p,p),idum2+idum2,max(p,p,p+p+p),idum2+idum2+idum2)   
  call foo(p,max(idum1,idum2),2,p,max(idum1(:),idum2(:)),max(p(:,:,:)+p(:,:,:),p(:,:,:)),idum2+idum2,max(p(:,:,:),p,p(:,:,:)+p(:,:,:)+p(:,:,:)),idum2+idum2+idum2)   
  call foo(p,max(idum1,idum2),2,p,max(idum1(n:),idum2(:h(2,2,2)+n)),max(p(n:,:,:)+p(:200,:n+100-1,:),p(:,:,:)),idum2+idum2,max(p(:,:,:),p,p(:,:,:)+p(:,:,:)+p(:,:,:)),idum2+idum2+idum2)   
  call foo(p,max(idum1,idum2(ha(2,2,2)%ha(2,2,2)%h(2,2,2)-1:)),2,p,max(idum1(n:),idum2(:h(2,2,2)+n)),max(p(n:,:,:)+p(:200,:n+100-1,:),p(:,:,:)),idum2+idum2,max(p(:,:,:),p,p(:,:,:)+p(:,:,:)+p(:,:,:)),idum2+idum2+idum2)   
 call foo(p,max(grid%idum,idum2,-123),3,p,max(-1,grid%idum,idum2),p*2,max(grid%idum+grid%idum,idum2,-123),p*3,max(grid%idum+grid%idum+grid%idum,idum2,-123)) 
  call foo(p,max(ha(2,2,2)%ha(2,2,2)%h(2,2,2),grid%idum(n:3),idum2),3,p,max(grid%idum(n:3),idum2),p+p,max(grid%idum(n:3)+grid%idum(n:3),idum2),p*3,max(grid%idum(n:3)+grid%idum(n:3)+grid%idum(n:3),idum2))  
  call foo(p,max(grid%idum(n:ha(2,2,2)%ha(2,2,2)%h(2,2,2)+1:n),idum2(:)),3,p,max(grid%idum(n:h(2,2,2)+1:n),idum2(ha(2,2,2)%ha(2,2,2)%h(2,2,1):h(1,1,1))),&
p+p,max(grid%idum(n:ha(2,2,2)%ha(2,2,2)%h(1,1,1))+grid%idum(n:3),idum2),p*3,max(grid%idum(n:3)+grid%idum(n:3)+grid%idum(n:3),idum2))  
  call foo3(p,max(grid%idum(n),idum2),3,p,max(grid%idum(n),idum2)) 

  call bar(p,t,p,t)
  call bar(p,t(:,:,:),p,t(:,:,:))
write(30,*)4
print *,'pass'
end program main
