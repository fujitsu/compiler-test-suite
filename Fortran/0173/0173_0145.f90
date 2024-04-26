subroutine s1

      type xx
        integer,allocatable,dimension(:)::a
      end type

       type(xx) :: v(2)
         allocate(v(1)%a(1),source=1)
       v(2)=v(1)
       if(v(1)%a(1)/=1)print *,'error'
       if(v(2)%a(1)/=1)print *,'error'
end
do k=1,100
call s1
end do
print *,'pass'
       end
