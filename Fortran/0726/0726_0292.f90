 call s1
 print *,'pass'
 end
 subroutine s1
 type a
   integer ::a1=1
 end type
 type aa
  type (a),pointer         :: x2
 end type
 type (aa)::x3
 allocate(x3%x2)
 if (x3%x2%a1/=1)write(6,*) "NG"
 end
