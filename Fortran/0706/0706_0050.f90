      call s1
      print *,'pass'
      end
  module m1
    integer(4) ,pointer::as1
    integer(4) ,pointer::aa1(:)
    integer(8) ,pointer::bs1
    integer(8) ,pointer::ba1(:)
    logical(1) ,pointer::cs1
    logical(1) ,pointer::ca1(:)
    logical(4) ,pointer::ds1
    logical(4) ,pointer::da1(:)
    complex(4) ,pointer::es1
    complex(4) ,pointer::ea1(:)
    character  ,pointer::fs1
    character  ,pointer::fa1(:)
    type  st
      integer (4) ::g1
      character   ::g2
    end type
    type (st) ,pointer:: gs1
    type (st) ,pointer:: ga1(:)
    integer,pointer::flag
  contains
    subroutine set
    allocate( as1 ,aa1(2) ,bs1 ,ba1(2) ,cs1 ,ca1(2) ,ds1 ,da1(2) ,es1 ,ea1(2) ,fs1 ,fa1(2) , gs1 , ga1(2) ,flag)
    as1=1
    aa1=1
    bs1=1
    ba1=1
    cs1=.true.
    ca1=.true.
    ds1=.true.
    da1=.true.
    es1=(1,1) 
    ea1=(1,1)
    fs1='1'   
    fa1='1'   
    gs1=st(1,'1')
    ga1=st(1,'1')
    end subroutine
  end module
  subroutine s1
   use m1
   call set
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
    integer(4)  ,optional,pointer::as1,aa1(:)
    integer(8)  ,optional,pointer::bs1,ba1(:)
    logical(1)  ,optional,pointer::cs1,ca1(:)
    logical(4)  ,optional,pointer::ds1,da1(:)
    complex(4)  ,optional,pointer::es1,ea1(:)
    character   ,optional,pointer::fs1,fa1(:)
    type (st)   ,optional,pointer::gs1,ga1(:)
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
      deallocate( &
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
