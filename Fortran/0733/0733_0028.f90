      integer   jx(0)
      integer ,allocatable::jz(:)
      allocate(jz(0));jz=0; i=1;j=2
      call s(shape(spread(jx,2,1)))
      call s(shape(spread(jx,2,i)))
      call s(shape(spread(jx,j,1)))
      call s(shape(spread(jz,2,1)))
print *,'pass'
 contains
 subroutine s(x)
 integer::x(:)
 if (any(x/=(/0,1/)))write(6,*) "NG"
end subroutine
      end
