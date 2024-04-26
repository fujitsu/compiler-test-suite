subroutine s1
      type xx
   integer::x=0
        integer,allocatable,dimension(:)::a1
   integer::x1=0
        integer,allocatable             ::a2
        integer,allocatable,dimension(:)::a3
        integer,allocatable             ::a4
      end type
   type w
       type(xx):: v1,v2
   end type
type ww
   integer::x=0
   type(w)::y
end type
   type(ww)::z
        allocate(z%y%v1%a1(1),source=1)
        allocate(z%y%v1%a2   ,source=1)
        allocate(z%y%v1%a3(1),source=1)
        allocate(z%y%v1%a4   ,source=1)
        allocate(z%y%v2%a1(1),source=-1)
        allocate(z%y%v2%a2   ,source=-1)
        allocate(z%y%v2%a3(1),source=-1)
        allocate(z%y%v2%a4   ,source=-1)
       z%y%v2=z%y%v1
      if(z%y%v1%a1(1)/=1)print *,'error'
      if(z%y%v2%a1(1)/=1)print *,'error'
      if(z%y%v1%a2   /=1)print *,'error'
      if(z%y%v2%a2   /=1)print *,'error'
      if(z%y%v1%a3(1)/=1)print *,'error'
      if(z%y%v2%a3(1)/=1)print *,'error'
      if(z%y%v1%a4   /=1)print *,'error'
      if(z%y%v2%a4   /=1)print *,'error'
end
do k=1,100
call s1
end do
print *,'pass'
       end
