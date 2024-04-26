subroutine s1

      type xx
        integer,allocatable,dimension(:)::a
      end type
   type w
       type(xx):: z1,y1
   end type
   type(w)::z,y
        allocate(z%z1%a(1),source=1)
       y%y1=z%z1
      if(z%z1%a(1)/=1)print *,'error'
      if(y%y1%a(1)/=1)print *,'error'
end
do k=1,100
call s1
end do
print *,'pass'
       end
