 call s1
 print *,'pass'
 end
 module m1
  integer i1
  type x1
    integer xx1
    character(3) xx2
  end type
  type y1
    integer yy1
    character(3) yy2
    type (x1):: yy3
  end type
  type (y1):: i2
  namelist /n1/i1,i2
   interface operator(/=)
     module procedure y1_chk
   end interface
  contains
    function y1_chk(a1,a2)
     logical y1_chk
     type (y1),intent(in)::a1
     type (y1),intent(in)::a2
     y1_chk = &
        a1%yy1 /= a2%yy1 .or. a1%yy2/=a2%yy2 .or. &
        a1%yy3%xx1 /= a2%yy3%xx1 .or. a1%yy3%xx2/=a2%yy3%xx2
    end function
    subroutine ss1
      type (y1) :: i3
      namelist /n2/i1,i2,i3
      i1=101
      i2=y1(201,'202',x1(203,'204'))
      write(11,n1) 
      i1=0
      i2=y1(0,'0',x1(0,'0'))
      rewind 11;read(11,n1) 
      if (i1/=101)print *,'fail'
      if (i2/=y1(201,'202',x1(203,'204')))print *,'fail'
      i1=901
      i2=y1(801,'802',x1(803,'804'))
      i3=y1(301,'302',x1(303,'304'))
      write(12,n2) 
      i1=0
      i2=y1(0,'0',x1(0,'0'))
      i3=y1(0,'0',x1(0,'0'))
      rewind 12;read(12,n2) 
      if (i1/=901)print *,'fail'
      if (i2/=y1(801,'802',x1(803,'804')))print *,'fail'
      if (i3/=y1(301,'302',x1(303,'304')))print *,'fail'
      call ss11
      contains
       subroutine ss11
        type (y1) :: i4
        namelist /n3/i1,i2,i3,i4
        i1=401
        i2=y1(501,'502',x1(503,'504'))
        i3=y1(601,'602',x1(603,'604'))
        i4=y1(701,'702',x1(703,'704'))
        write(13,n3)
        i1=0
        i2=y1(0,'0',x1(0,'0'))
        i3=y1(0,'0',x1(0,'0'))
        rewind 13;read(13,n3) 
        if (i1/=401)print *,'fail'
        if (i2/=y1(501,'502',x1(503,'504')))print *,'fail'
        if (i3/=y1(601,'602',x1(603,'604')))print *,'fail'
        if (i4/=y1(701,'702',x1(703,'704')))print *,'fail'
       end subroutine
    end subroutine
 end 
 subroutine s1
 use m1
  type (y1) :: i3
  namelist /n2/i1,i2,i3
 call ss1
  i1=101
  i2=y1(201,'202',x1(203,'204'))
  write(21,n1) 
  i1=0
  i2=y1(0,'0',x1(0,'0'))
  rewind 21;read(21,n1) 
  if (i1/=101)print *,'fail'
  if (i2/=y1(201,'202',x1(203,'204')))print *,'fail'
  i1=901
  i2=y1(801,'802',x1(803,'804'))
  i3=y1(301,'302',x1(303,'304'))
  write(22,n2) 
      i1=0
      i2=y1(0,'0',x1(0,'0'))
      i3=y1(0,'0',x1(0,'0'))
      rewind 22;read(22,n2) 
      if (i1/=901)print *,'fail'
      if (i2/=y1(801,'802',x1(803,'804')))print *,'fail'
      if (i3/=y1(301,'302',x1(303,'304')))print *,'fail'
      call ss21
      contains
       subroutine ss21
        type (y1) :: i4
        namelist /n3/i1,i2,i3,i4
        i1=401
        i2=y1(501,'502',x1(503,'504'))
        i3=y1(601,'602',x1(603,'604'))
        i4=y1(701,'702',x1(703,'704'))
        write(23,n3)
        i1=0
        i2=y1(0,'0',x1(0,'0'))
        i3=y1(0,'0',x1(0,'0'))
        rewind 23;read(23,n3) 
        if (i1/=401)print *,'fail'
        if (i2/=y1(501,'502',x1(503,'504')))print *,'fail'
        if (i3/=y1(601,'602',x1(603,'604')))print *,'fail'
        if (i4/=y1(701,'702',x1(703,'704')))print *,'fail'
       end subroutine
    end subroutine
