      call s1
      print *,'pass'
      end
      module m1
      contains
      function   ss1(j4_f,ii ) result(r)
      character(len=ii),pointer::r
      interface
 function j4_f(p) result(a)
    character(kind=1),pointer:: a
    character(kind=1,len=*),pointer,optional::p
 end function
      end interface
      entry      ss2(j4_f,ii ) result(r)
      optional ::j4_f
      character,pointer::x1
      character,allocatable,dimension(:,:)::x2
      allocate (x1);x1='1'
      allocate (x2(2,2));x2=reshape((/'1','2','3','4'/),(/2,2/))
      if (present(j4_f))then
 if (ii/=1)write(6,*) "NG"
 x1=>j4_f(x1);if (x1/='1')write(6,*) "NG"
 if (.not.associated(x1,j4_f(x1)))write(6,*) "NG"
 x1=>j4_f(  );if (x1/='a')write(6,*) "NG"
 r=>x1
      else
 if (ii/=0)write(6,*) "NG"
 nullify(r)
      endif
      return
      entry      ss3(    ii  ) result(r)
      nullify(r)
      end function
      function   tt1(j4_f,ii ) result(r)
      interface
 function j4_f(p) result(a)
    character(kind=1),allocatable,dimension(:,:):: a
    character(kind=1,len=*),allocatable,optional::p(:,:)
 end function
      end interface
      entry      tt2(j4_f,ii ) result(r)
      optional ::j4_f
      character,pointer::x1
      character,allocatable,dimension(:,:)::x2
      character(len=ii),allocatable,dimension(:,:)::r
      allocate (x1);x1='1'
      allocate (x2(2,2));x2=reshape((/'1','2','3','4'/),(/2,2/))
      if (present(j4_f))then
 if (ii/=1)write(6,*) "NG"
 x2=j4_f(x2)
 if (any(x2/= reshape((/'1','2','3','4'/),(/2,2/))))write(6,*) "NG"
 x2=j4_f(  )
 if (any(x2/= reshape((/'a','b','c','d'/),(/2,2/))))write(6,*) "NG"
 allocate(r(2,2))
 r=x2
      else
 if (ii/=0)write(6,*) "NG"
      endif
      return
      entry      tt3( ii ) result(r)
      end function  
      end module
      module interface
      interface
 function j4_ff(p) result(a)
    character(kind=1),pointer:: a
    character(kind=1,len=*),pointer,optional::p
 end function
 function j4_fx(p) result(a)
    character(kind=1),allocatable,dimension(:,:):: a
    character(kind=1,len=*),allocatable,optional::p(:,:)
 end function
      end interface
      end module
      subroutine s1
      use    m1
      use    interface
      if ( .not.associated(ss1(j4_ff,ii=1))    )write(6,*) "NG"
      if (          ss1(j4_ff,ii=1)/='a')write(6,*) "NG"
      if (      associated(ss1(      ii=0))    )write(6,*) "NG"
      if ( .not.associated(ss2(j4_ff,ii=1))    )write(6,*) "NG"
      if (          ss2(j4_ff,ii=1)/='a')write(6,*) "NG"
      if (      associated(ss2(      ii=0))    )write(6,*) "NG"
      if (      associated(ss3(      ii=0))    )write(6,*) "NG"
      if ( any(tt1(j4_fx,ii=1)/= reshape((/'a','b','c','d'/),(/2,2/))))write(6,*) "NG"
      if ( any(tt2(j4_fx,ii=1)/= reshape((/'a','b','c','d'/),(/2,2/))))write(6,*) "NG"
      end
      function j4_ff(p) result(a)
 character(kind=1),pointer:: a
 character(kind=1,len=*),pointer,optional::p
 if (present(p)) then; a=>p
 else ; allocate (a);a='a'
 end if
      end function
      function j4_fx(p) result(a)
 character(kind=1),allocatable,dimension(:,:):: a
 character(kind=1,len=*),allocatable,optional::p(:,:)
  allocate (a(2,2))
 if (present(p)) then; a=p
 else 
  a=reshape((/'a','b','c','d'/),(/2,2/))
 end if
      end function
      
