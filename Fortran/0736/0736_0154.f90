 module m1
  type x
   integer::x1
   integer,allocatable,dimension(:)::x2
   integer::x3
  end type
   type(x)::v01
   contains
  subroutine s01
  entry      e01
   type(x)::v02
   if (allocated(v01%x2))write(6,*) "NG"
   if (allocated(v02%x2))write(6,*) "NG"
   allocate(v01%x2(-5:-4))
   allocate(v02%x2(-5:-4))
   call s011
   if (.not.allocated(v02%x2))write(6,*) "NG"
   deallocate(v01%x2)
   contains
    subroutine s011
      type(x)::v03
      if (allocated(v03%x2))write(6,*) "NG"
      allocate(v03%x2(-5:-4))
    end subroutine s011
   end subroutine
 end

 use m1
   type(x)::v04
do ii=1,5
   if (allocated(v01%x2))write(6,*) "NG"
   if (allocated(v04%x2))write(6,*) "NG"
   call s01
   call e01
   call s03
   call e03
   allocate(v04%x2(-5:-4))
   allocate(v01%x2(-5:-4))
   call s021
   if (.not.allocated(v04%x2))write(6,*) "NG"
   deallocate(v01%x2)
   deallocate(v04%x2)
end do
print *,'pass'
   contains
    subroutine s021
      type(x)::v05
      if (allocated(v05%x2))write(6,*) "NG"
      allocate(v05%x2(-5:-4))
    end subroutine s021
end
  subroutine s03
  use m1
  entry      e03
   type(x)::v06
   if (allocated(v01%x2))write(6,*) "NG"
   if (allocated(v06%x2))write(6,*) "NG"
   allocate(v06%x2(-5:-4))
   allocate(v01%x2(-5:-4))
   call s031
   deallocate(v01%x2)
   contains
    subroutine s031
      type(x)::v07
      if (allocated(v07%x2))write(6,*) "NG"
      allocate(v07%x2(-5:-4))
    end subroutine s031
   end subroutine
