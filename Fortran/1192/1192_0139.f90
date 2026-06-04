module m1
  type x_base
    integer,allocatable::x1
  end type
  type,extends(x_base)::x_ext
    integer,allocatable::x2
  end type
  type base
    integer,allocatable::b1
  end type
  type,extends(base)::ext
    integer,allocatable::e1
    type (x_ext),allocatable::e2
    class(x_base),allocatable::e3
    class(base),allocatable::e4
  end type
  class(base),allocatable::fm
  class(base),allocatable::to
  class(base),allocatable::tmp
contains
 subroutine s1
   allocate(ext:: fm)
   select type(fm)
    type is(ext)
     allocate(fm%b1,source=1)
     allocate(fm%e1,source=2)
     allocate(fm%e2)
     allocate(fm%e2%x1,source=3)
     allocate(fm%e2%x2,source=4)
     allocate(x_ext::fm%e3)
     allocate(fm%e3%x1,source=5)
     select type(p=>fm%e3)
       type is(x_ext)
         allocate(p%x2,source=6)
     end select
     allocate(ext::fm%e4)
     select type(p=>fm%e4)
       type is(ext)
         allocate(p%b1,source=9)
         allocate(p%e1,source=10)
         allocate(p%e2)
         allocate(p%e2%x1,source=11)
         allocate(p%e2%x2,source=12)
         allocate(x_ext::p%e3)
         allocate(p%e3%x1,source=13)
         select type(w=>p%e3)
           type is(x_ext)
             allocate(w%x2,source=14)
         end select
     end select
   end select

  allocate( tmp, source=fm)

   select type(tmp)
    type is(ext)
     tmp%b1=11
     tmp%e1=12
     tmp%e2%x1=13
     tmp%e2%x2=14
     tmp%e3%x1=15
     select type(p=>tmp%e3)
       type is(x_ext)
         p%x2=16
     end select
     select type(p=>tmp%e4)
       type is(ext)
         p%b1=19
         p%e1=20
         p%e2%x1=21
         p%e2%x2=22
         p%e3%x1=23
         select type(w=>p%e3)
           type is(x_ext)
             w%x2=24
         end select
      end select
   end select

   select type(fm)
    type is(ext)
     if(fm%b1/=1)print *,9001
     if(fm%e1/=2)print *,9002
     if(fm%e2%x1/=3)print *,9003
     if(fm%e2%x2/=4)print *,9004
     if(fm%e3%x1/=5)print *,9005
     select type(p=>fm%e3)
       type is(x_ext)
         if (p%x2/=6) print *,9006
     end select
     select type(p=>fm%e4)
       type is(ext)
         if(p%b1/=9)print *,9012
         if(p%e1/=10)print *,9013
         if(p%e2%x1/=11)print *,9014
         if(p%e2%x2/=12)print *,9015
         if(p%e3%x1/=13)print *,9016
         select type(w=>p%e3)
           type is(x_ext)
             if (w%x2/=14) print *,9017
         end select
      end select
   end select
end
end


use m1
call s1
print *,'sngg384p : pass'
end
