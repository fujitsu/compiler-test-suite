integer::a(10)  
        call sub(a)
        call sub2(a)
contains
 subroutine sub(a)
      type(*)::a(:)
    if(is_contiguous(a) .neqv. .true.)print*,'101'
    print*,'pass'
  end subroutine 
 
subroutine sub2(a)
      type(*)::a(*)
    if(is_contiguous(a) .neqv. .true.)print*,'201'
    print*,'pass'
  end subroutine 
end  
