subroutine s1

      type xx
        integer,allocatable,dimension(:)::a
      end type
   type w
       type(xx):: v1(2),v2(2)
   end type
   type(w)::z
        allocate(z%v1(1)%a(1),source=1)
        allocate(z%v1(2)%a(1),source=2)
       z%v2=z%v1
      if(z%v1(1)%a(1)/=1)print *,'error1'
      if(z%v1(2)%a(1)/=2)print *,'error2'
      if(z%v2(1)%a(1)/=1)print *,'error3'
      if(z%v2(2)%a(1)/=2)print *,'error4'
end
do k=1,100
call s1
end do
print *,'pass'
       end
