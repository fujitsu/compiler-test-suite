subroutine prc01
  print *, '102'
end
subroutine prc02(i)
  integer,intent(inout)::i
  print *, '103'
  i=i+1
end
subroutine prc1
  print *, 'pass'
end
subroutine prc2(i)
  integer,intent(inout)::i
  i=i+1
end

interface
  subroutine prc01
  end subroutine prc01
  subroutine prc02(i)
    integer,intent(inout)::i
  end subroutine prc02
  subroutine prc1
  end subroutine prc1
  subroutine prc2(i)
    integer,intent(inout)::i
  end subroutine prc2
end interface

integer::a
procedure(prc1), pointer :: ptr1
procedure(prc2), pointer :: ptr2
a=1
ptr1=>null()
ptr2=>null()
!$omp parallel sections lastprivate(ptr1,ptr2)
!$omp section
ptr1=>prc01
ptr2=>prc02
!$omp section
ptr1=>prc1
ptr2=>prc2
!$omp end parallel sections
call ptr2(a)
if (a/=2) print *, '101'
call ptr1()

end
