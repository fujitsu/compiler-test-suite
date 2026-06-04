integer,parameter::jjj=10,iii=100
integer,dimension(iii,jjj)::a1,a2,b1,b2,c
interface
  elemental integer function fun ( x , y )
    integer,intent(in):: x,y
  end function fun
end interface

!$omp parallel
!$Omp workshare
forall (j=1:jjj,i=1:iii)
    a1(i,j) = i
    a2(i,j) = i
    b1(i,j) = fun ( i , j )
    b2(i,j) = fun ( i , j )
    a1(i,j) = a1(i,j) * b1(i,j) / 100
end forall
!$Omp end workshare
!$omp end parallel
do j=1,jjj ; do i=1,iii
    a2(i,j) = a2(i,j) * b2(i,j) / 100
end do     ; enddo

!$omp parallel workshare
forall (j=1:jjj,i=1:iii)
    c(i,j) = a1(i,j) - a2(i,j)
end forall
!$omp end parallel workshare
if (any((/c/)/=(/(0,m=1,jjj*iii)/))) print *,"fail"
print *,'pass'
end

elemental integer function fun ( x , y )
  integer,intent(in):: x,y
  fun = x*x/y
end
