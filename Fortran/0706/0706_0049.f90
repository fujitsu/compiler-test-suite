      call s1
      print *,'pass'
      end
  module m1
    integer(4) ::as1=1
    integer(4) ::aa1(2)=1
    integer(8) ::bs1=1
    integer(8) ::ba1(2)=1
    logical(1) ::cs1=.true.
    logical(1) ::ca1(2)=.true.
    logical(4) ::ds1=.true.
    logical(4) ::da1(2)=.true.
    complex(4) ::es1=(1,1) 
    complex(4) ::ea1(2)=(1,1)
    character  ::fs1='1'   
    character  ::fa1(2)='1'   
    type  st
      integer (4) ::g1
      character   ::g2
    end type
    type (st) :: gs1=st(1,'1')
    type (st) :: ga1(2)=st(1,'1')
    integer::flag
  end module
  subroutine s1
   use m1
    flag=1
    call ss1(as1,bs1,cs1,ds1,es1,fs1,gs1, &
             aa1,ba1,ca1,da1,ea1,fa1,ga1)
    flag=1
    call ss1(as1,bs1,cs1,ds1,es1,fs1,gs1, &
             aa1,ba1,ca1,da1,ea1,fa1,ga1)
    contains
     subroutine &
         ss1(as1,bs1,cs1,ds1,es1,fs1,gs1, &
             aa1,ba1,ca1,da1,ea1,fa1,ga1)
    integer(4)  ,optional,target::as1,aa1(:)
    integer(8)  ,optional,target::bs1,ba1(:)
    logical(1)  ,optional,target::cs1,ca1(:)
    logical(4)  ,optional,target::ds1,da1(:)
    complex(4)  ,optional,target::es1,ea1(:)
    character   ,optional,target::fs1,fa1(:)
    type (st)   ,optional,target::gs1,ga1(:)
    integer(4)  ,pointer::as3,aa4(:)
    integer(8)  ,pointer::bs3,ba4(:)
    logical(1)  ,pointer::cs3,ca4(:)
    logical(4)  ,pointer::ds3,da4(:)
    complex(4)  ,pointer::es3,ea4(:)
    character   ,pointer::fs3,fa4(:)
    type (st)   ,pointer::gs3,ga4(:)
    if (associated(as3,as1))print *,'fail'
    if (associated(bs3,bs1))print *,'fail'
    if (associated(cs3,cs1))print *,'fail'
    if (associated(ds3,ds1))print *,'fail'
    if (associated(es3,es1))print *,'fail'
    if (associated(fs3,fs1))print *,'fail'
    if (associated(gs3,gs1))print *,'fail'
    if (associated(aa4,aa1))print *,'fail'
    if (associated(ba4,ba1))print *,'fail'
    if (associated(ca4,ca1))print *,'fail'
    if (associated(da4,da1))print *,'fail'
    if (associated(ea4,ea1))print *,'fail'
    if (associated(fa4,fa1))print *,'fail'
    if (associated(ga4,ga1))print *,'fail'
    if (flag==1) then
      if (.not.present(as1))print *,'fail'
      if (.not.present(bs1))print *,'fail'
      if (.not.present(cs1))print *,'fail'
      if (.not.present(ds1))print *,'fail'
      if (.not.present(es1))print *,'fail'
      if (.not.present(fs1))print *,'fail'
      if (.not.present(gs1))print *,'fail'
      if (.not.present(aa1))print *,'fail'
      if (.not.present(ba1))print *,'fail'
      if (.not.present(ca1))print *,'fail'
      if (.not.present(da1))print *,'fail'
      if (.not.present(ea1))print *,'fail'
      if (.not.present(fa1))print *,'fail'
      if (.not.present(ga1))print *,'fail'
    else
      if (     present(as1))print *,'fail'
      if (     present(bs1))print *,'fail'
      if (     present(cs1))print *,'fail'
      if (     present(ds1))print *,'fail'
      if (     present(es1))print *,'fail'
      if (     present(fs1))print *,'fail'
      if (     present(gs1))print *,'fail'
      if (     present(aa1))print *,'fail'
      if (     present(ba1))print *,'fail'
      if (     present(ca1))print *,'fail'
      if (     present(da1))print *,'fail'
      if (     present(ea1))print *,'fail'
      if (     present(fa1))print *,'fail'
      if (     present(ga1))print *,'fail'
      allocate( &
                          as3,aa4(2), &
                          bs3,ba4(2), &
                          cs3,ca4(2), &
                          ds3,da4(2), &
                          es3,ea4(2), &
                          fs3,fa4(2), &
                          gs3,ga4(2)) 
      if (.not.associated(as3,as1))print *,'fail'
      if (.not.associated(bs3,bs1))print *,'fail'
      if (.not.associated(cs3,cs1))print *,'fail'
      if (.not.associated(ds3,ds1))print *,'fail'
      if (.not.associated(es3,es1))print *,'fail'
      if (.not.associated(fs3,fs1))print *,'fail'
      if (.not.associated(gs3,gs1))print *,'fail'
      if (.not.associated(aa4,aa1))print *,'fail'
      if (.not.associated(ba4,ba1))print *,'fail'
      if (.not.associated(ca4,ca1))print *,'fail'
      if (.not.associated(da4,da1))print *,'fail'
      if (.not.associated(ea4,ea1))print *,'fail'
      if (.not.associated(fa4,fa1))print *,'fail'
      if (.not.associated(ga4,ga1))print *,'fail'
      deallocate    ( &
                          as3,aa4, &
                          bs3,ba4, &
                          cs3,ca4, &
                          ds3,da4, &
                          es3,ea4, &
                          fs3,fa4, &
                          gs3,ga4) 
    end  if
    end subroutine
    end
