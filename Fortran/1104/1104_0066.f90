     module mod
       type :: base
         integer(8)::b0
         character(:),allocatable::o
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

       type b
         integer(8)::dmy
         class(base),allocatable::bv(:)
       end type

     contains

       subroutine s1(var, value)
         class(b), allocatable, intent(inout) :: var(:)
         class(b), intent(in) :: value(:)
         var=value
       end subroutine s1
     end module mod

     subroutine w
     use mod
     class(b), allocatable :: var(:)
     type(b), allocatable :: value(:)
     integer(8)::k1,k2
     allocate(value(2))
     allocate(ext::value(1)%bv(3))
     allocate(ext::value(2)%bv(3))
     select type(p=>value(1)%bv)
       type is(ext)
         allocate(p(1)%o   ,source='11')
         allocate(p(3)%o   ,source='aa')
         allocate(p(1)%name,source='11')
         allocate(p(3)%name,source='aa')
     end select
     select type(p=>value(2)%bv)
       type is(ext)
         allocate(p(1)%o   ,source='22')
         allocate(p(3)%o   ,source='bb')
         allocate(p(1)%name,source='22')
         allocate(p(3)%name,source='bb')
     end select
     call s1(var, value) 
     k=0
     select type( p=>var(1)%bv )
       type is(ext)
         p(1)%o   (:)='00'
         p(3)%o   (:)='00'
         p(1)%name(:)='00'
         p(3)%name(:)='00'
       k1=loc(p(1)%name)
       k=1
     end select
     if (k/=1) print *,1002
     select type(p=>value(1)%bv)
       type is(ext)
         if (p(1)%o   (:)/='11') print *,3001
         if (p(3)%o   (:)/='aa') print *,3011
         if (p(1)%name(:)/='11') print *,1001
         if (p(3)%name(:)/='aa') print *,1011
         k2=              loc(p(1)%name)
     end select
     if (k1==k2) print *,2002
     k=0
     select type( p=>var(2)%bv )
       type is(ext)
         p(1)%o   (:)='00'
         p(3)%o   (:)='00'
         p(1)%name(:)='00'
         p(3)%name(:)='00'
       k1=loc(p(1)%name)
       k=1
     end select
     if (k/=1) print *,1102
     select type(p=>value(2)%bv)
       type is(ext)
         if (p(1)%o   (:)/='22') print *,3101
         if (p(3)%o   (:)/='bb') print *,3111
         if (p(1)%name(:)/='22') print *,1101
         if (p(3)%name(:)/='bb') print *,1111
         k2=              loc(p(1)%name)
     end select
     if (k1==k2) print *,2102
     end
     call w
     print *,'sngg645p : pass'
     end 
