      call s1
      print *,'pass'
      end
module m1
  interface sx
    module procedure sxa,sxb,sxc,sxd
  end interface
  interface operator(/=)
    module procedure stcmp
  end interface
 type st
   integer a
   complex b
   character c
 end type
 integer am(3,2)
 complex bm(3,2)
 character cm(3,2)
 type(st) dm(3,2)
 integer af(3,2)
 complex bf(3,2)
 character cf(3,2)
 type(st) df(3,2)
 integer a(3,2)
 complex b(3,2)
 character c(3,2)
 type(st) d(3,2)
 integer ::a1(6)
 complex ::b1(6)
 character::c1(6)
 type(st) d1(6)
 integer v2(2),v3(3)
 integer::k=1
contains 
   subroutine sxa(a)
    integer a(:,:)
    if (any(ubound(a)/=(/3,2/)))print *,'fail'
    if (6/=size(a))print *,'fail'
    if (any(a/=am))print *,'fail'
   end subroutine
   subroutine sxb(a)
    complex a(:,:)
    if (any(ubound(a)/=(/3,2/)))print *,'fail'
    if (6/=size(a))print *,'fail'
    if (any(a/=bm))print *,'fail'
   end subroutine
   subroutine sxc(a)
    character(*) a(:,:)
    if (any(ubound(a)/=(/3,2/)))print *,'fail'
    if (len(a)/=1)print *,'fail'
    if (size(a)/=6)print *,'fail'
    if (any(a/=cm))print *,'fail'
   end subroutine
   subroutine sxd(a)
    type(st) a(:,:)
    if (any(ubound(a)/=(/3,2/)))print *,'fail'
    if (6/=size(a))print *,'fail'
    if (any((a%a)/=am))print *,'fail'
    if (any((a%b)/=bm))print *,'fail'
    if (any((a%c)/=cm))print *,'fail'
   end subroutine
   function   stcmp(a1,a2)
    type(st),intent(in):: a1(:,:),a2(:,:)
    logical,dimension(size(a1,1))::stcmp
    if (size(a1)/=size(a2))print *,'fail'
    if (any(a1%a/=a2%a))print *,'fail'
    if (any(a1%b/=a2%b))print *,'fail'
    if (any(a1%c/=a2%c))print *,'fail'
    stcmp=.false.
   end function  
end
 subroutine s1
 call ss0
 call ss2
 contains 
  subroutine ss0
   use m1
   v3=(/(i,i=1,3)/)
   v2=(/(i,i=1,2)/)
   am=reshape((/ (i,i=1,6) /),(/3,2/))
   bm=reshape((/ (1,1),(2,2),(3,2),(4,4),(5,5),(6,6) /) ,(/3,2/))
   cm=reshape((/ (achar(iachar('1')+i-1),i=1,6) /),(/3,2/))
   dm%a=am
   dm%b=bm
   dm%c=cm
  end subroutine
end
subroutine ss2
 use m1
 open(33,delim='quote'); open(36,delim='quote');open (39,delim='quote')
 open(40,delim='quote'); open(41,delim='quote')
 open(42,delim='quote'); open(43,delim='quote')
 write(31,*) transpose(matrix=transpose(matrix=am))
 write(32,*) transpose(matrix=transpose(matrix=bm))
 write(33,*) transpose(matrix=transpose(matrix=cm))
 write(37,*) transpose(matrix=transpose(matrix=am(v3,v2)))
 write(38,*) transpose(matrix=transpose(matrix=bm(v3,v2)))
 write(39,*) transpose(matrix=transpose(matrix=cm(v3,v2)))
 write(40,*) transpose(matrix=transpose(matrix=cm(:,:)(:k)))
 write(41,*) transpose(matrix=transpose(matrix=cm(v3,v2)(:k)))
 write(42,*) transpose(matrix=transpose(matrix=dm))
 write(43,*) transpose(matrix=transpose(matrix=dm(v3,v2)))
 rewind 31;rewind 32;rewind 33;rewind 34;rewind 35;rewind 36;rewind 37;rewind 38;rewind 39;rewind 40;rewind 41;rewind 42;rewind 43
 read (31,*) a;if (any(a/=am))print *,'fail'
 read (32,*) b;if (any(b/=bm))print *,'fail'
 read (33,*) c;if (any(c/=cm))print *,'fail'
 read (37,*) a;if (any(a/=am))print *,'fail'
 read (38,*) b;if (any(b/=bm))print *,'fail'
 read (39,*) c;if (any(c/=cm))print *,'fail'
 read (40,*) c;if (any(c/=cm))print *,'fail'
 read (41,*) c;if (any(c/=cm))print *,'fail'
 read (42,*) d;if (any(d/=dm))print *,'fail'
 read (43,*) d;if (any(d/=dm))print *,'fail'
 call sx(transpose(matrix=transpose(matrix=am)))
 call sx(transpose(matrix=transpose(matrix=bm)))
 call sx(transpose(matrix=transpose(matrix=cm)))
 call sx(transpose(matrix=transpose(matrix=cm(:,:)(:k))))
 call sx(transpose(matrix=transpose(matrix=am(v3,v2))))
 call sx(transpose(matrix=transpose(matrix=bm(v3,v2))))
 call sx(transpose(matrix=transpose(matrix=cm(v3,v2))))
 call sx(transpose(matrix=transpose(matrix=cm(v3,v2)(:k))))
 call sx(transpose(matrix=transpose(matrix=dm)))
 call sx(transpose(matrix=transpose(matrix=dm(:,:))))
 call sx(transpose(matrix=transpose(matrix=dm(v3,v2))))
 end 
