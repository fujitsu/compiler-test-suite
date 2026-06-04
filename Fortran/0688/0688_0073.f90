subroutine prc001
end
subroutine prc002(i)
  integer,intent(inout)::i
  i=i+1
end
subroutine prc01
  print *, '103'
end
subroutine prc02(i)
  integer,intent(inout)::i
  print *, '104'
  i=i+100
end
subroutine prc1
  print *, 'pass'
end
subroutine prc2(i)
  integer,intent(inout)::i
  i=i+1000
end

interface
  subroutine prc001
  end subroutine prc001
  subroutine prc002(i)
    integer,intent(inout)::i
  end subroutine prc002
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
ptr1=>prc001
ptr2=>prc002
!$omp parallel sections firstprivate(ptr1,ptr2) lastprivate(ptr1,ptr2)
!$omp section
call ptr2(a)
if (a/=2) print *, '101'
call ptr1()
ptr1=>prc01
ptr2=>prc02
!$omp section
ptr1=>prc1
ptr2=>prc2
!$omp end parallel sections
call ptr2(a)
if (a/=1002) print *, '102', a
call ptr1()

end
