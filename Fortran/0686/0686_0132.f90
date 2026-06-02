integer,parameter::jjj=10,iii=100
integer,dimension(iii,jjj)::c
type aaa
  integer,dimension(iii,jjj)::a1,a2,b1,b2
end type aaa
type (aaa) zzz
interface
  elemental integer function fun ( x , y )
    integer,intent(in):: x,y
  end function fun
end interface

!$omp parallel
!$omp workshare
forall (j=1:jjj,i=1:iii)
    zzz%a1(i,j) = i
    zzz%a2(i,j) = i
    zzz%b1(i,j) = fun ( i , j )
    zzz%b2(i,j) = fun ( i , j )
    zzz%a1(i,j) = zzz%a1(i,j) * zzz%b1(i,j) / 100
end forall
!$omp end workshare
!$omp do
do j=1,jjj ; do i=1,iii
    zzz%a2(i,j) = zzz%a2(i,j) * zzz%b2(i,j) / 100
end do     ; enddo
!$omp end do
!$omp end parallel

!$omp parallel workshare
forall (j=1:jjj,i=1:iii)
    c(i,j) = zzz%a1(i,j) - zzz%a2(i,j)
end forall
!$omp end parallel workshare
if (any((/c/)/=(/(0,m=1,jjj*iii)/))) print *,"fail"
print *,'pass'
end

elemental integer function fun ( x , y )
  integer,intent(in):: x,y
  fun = x*x/y
end
