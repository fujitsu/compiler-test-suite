subroutine prc1
  print *, 'pass'
end
subroutine prc2(i)
  integer,intent(inout)::i
  i=i+1
end

interface
  subroutine prc1
  end subroutine prc1
  subroutine prc2(i)
    integer,intent(inout)::i
  end subroutine prc2
end interface

procedure(prc1), pointer :: ptr1
procedure(prc2), pointer :: ptr2
ptr1=>prc1
ptr2=>prc2
call sub1(ptr1,ptr2)

contains
  subroutine sub1(p1,p2)
    interface
       subroutine sub
       end subroutine sub
       subroutine prc2(i)
         integer,intent(inout)::i
       end subroutine prc2
    end interface
    procedure(sub),pointer :: p1
    procedure(prc2),pointer :: p2
    integer::a
    a=1
!$omp parallel firstprivate(a,p1,p2)
!$omp master
    call p2(a)
    if (a/=2) print *, '101'
    call p1()
!$omp end master
!$omp end parallel
  end subroutine sub1

end
