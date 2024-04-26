integer ::a(5)=[1,2,3,4,5]
integer ::b(3)
b = func(a(1:5:2))
 if (any(a/=[11,2,13,4,15])) print *,101
 if (any(b/=[11,13,15])) print *,102
 print *,'pass'
 contains
function func(b)
integer,contiguous :: b(:)
integer::func(3)
 if(is_contiguous(b).neqv..true.)print*,"105"
  b=b+10
  func =b
  end function
  end

