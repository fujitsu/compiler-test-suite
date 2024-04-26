subroutine s1

      type xx
        integer,allocatable,dimension(:)::a
      end type
   type w
       type(xx):: v1(1),v2(1)
   end type
   type(w)::z
        allocate(z%v1(1)%a(1),source=1)
       z%v2=z%v1
      if(z%v1(1)%a(1)/=1)print *,'error'
      if(z%v2(1)%a(1)/=1)print *,'error'
end
do k=1,100
call s1
end do
print *,'pass'
       end
