 call s1
 print *,'pass'
 end
 subroutine s1
    type a
      sequence
      integer,pointer:: a1
    end type
    type(a)::x3
    do i=2,4
      call ss1(i,x3)
    end do
 end
 subroutine ss1(i,x3)
    type a
      sequence
      integer,pointer:: a1=>null()
    end type
    type(a)::x1,x2(i)
    type(a),intent(out)::x3
    type(a),allocatable::x4(:)
    type(a)::x5,x51
    integer,target::xx 
    if (associated(x1%a1))write(6,*) "NG"        
    x1%a1=>xx
    if (associated(x2(1)%a1))write(6,*) "NG"
    x2(1)%a1=>xx
    if (associated(x2(2)%a1))write(6,*) "NG"
    x2(2)%a1=>xx
    if (associated(x3%a1))write(6,*) "NG"
    x3%a1=>xx
    allocate(x4(2))
    if (associated(x4(1)%a1))write(6,*) "NG"
    if (associated(x4(2)%a1))write(6,*) "NG"
    deallocate(x4)
    x51=x5()
    if (associated(x51%a1))write(6,*) "NG"
 end
 function x5()
    type a
      sequence
      integer,pointer:: a1=>null()
    end type
    type(a)::x5
 end 
