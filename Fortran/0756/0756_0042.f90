subroutine s1
integer:: x(2)=[1,2]
integer,allocatable::k1
integer,target::k2
allocate(k1)
call sub01(k1)
if (k1/=3) print *,103
call sub02(k2)
if (k2/=3) print *,104
contains
    subroutine sub01(j)
      allocatable::j
      do j=1,2
        if (x(j)/=j) print *,101,j
      enddo
    end subroutine
    subroutine sub02(j)
      target::j
      do j=1,2
        if (x(j)/=j) print *,101,j
      enddo
    end subroutine
end
call s1
print *,'pass'
end
