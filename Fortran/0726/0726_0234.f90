 call s1
 print *,'pass'
 end
 module m1
   type c
    integer*1 ::c1=1
   end type
   type a
     integer a1
     integer ::a2(1,1,1,2)=reshape((/2,3/),(/1,1,1,2/))
     type(a),pointer::a3=>null()
   end type
   type b
      integer ::b1(1,2,3)=reshape((/(i,i=11,16)/),(/1,2,3/))
      integer,pointer,dimension(:,:)::b2=>null()
      type (a):: b3(2)
      integer ::b4(2,3,1)=reshape((/(i,i=21,26)/),(/2,3,1/))
   end type
    interface chk
      module procedure chk_bs,chk_cs
    end interface
    interface clr
      module procedure clr_bs,clr_cs
    end interface
    type(a) ,target::a_target
    save a_target
   contains
   subroutine chk_bs(bs,bso)
    type(b)::bs
    type(b),optional,intent(out)::bso
    if (any(bs%b1/=reshape((/(i,i=11,16)/),(/1,2,3/))))write(6,*) "NG"
    if (associated(bs%b2))write(6,*) "NG"
    do ix1=1,size(bs%b3)
      if (any(bs%b3(ix1)%a2/=reshape((/2,3/),(/1,1,1,2/))))write(6,*) "NG"
      if (associated(bs%b3(ix1)%a3))write(6,*) "NG"
    end do
    if (any(bs%b4/=reshape((/(i,i=21,26)/),(/2,3,1/))))write(6,*) "NG"
  end subroutine
   subroutine chk_cs(cs,cso)
    type(c)::cs
    type(c),optional,intent(out)::cso
    if (cs%c1/=1)write(6,*) "NG"
  end subroutine
   subroutine clr_bs(bs,bso)
    type(b)::bs
    type(b),optional,intent(out)::bso
    bs%b1=reshape((/(i,i=111,116)/),(/1,2,3/))
    allocate(bs%b2(1,1))
    do ix1=1,size(bs%b3)
      bs%b3(ix1)%a2=reshape((/1112,1113/),(/1,1,1,2/))
      bs%b3(ix1)%a3=>a_target
    end do
    bs%b4=reshape((/(i,i=121,126)/),(/2,3,1/))
  end subroutine
   subroutine clr_cs(cs,cso)
    type(c)::cs
    type(c),optional,intent(out)::cso
    cs%c1=5
  end subroutine
end
 subroutine s1
  use m1
  type(b)::bs1,bso1
  type(c)::cs1,cso1
  do kk=1,3
  call chk(bs1)
  call chk(cs1)
  call clr(bso1)
  call clr(cso1)
  call chk(bs1,bso1)
  call chk(cs1,cso1)
  call chk(bso1)
  call chk(cso1)
  end do
end
