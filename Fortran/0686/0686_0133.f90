integer,parameter::jjj=30,iii=30
integer,dimension(iii,jjj)::a1,a2,b1,b2,c1,c2,x
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
    c1(i,j) = mod(i*j,10)
    c2(i,j) = mod(i*j,10)
end forall
!$Omp end workshare
!$omp workshare
forall (j=1:jjj,i=1:iii,c1(j,i)>0)
    a1(i,j) = ( a1(i,j) + b1(i,j) ) / c1(j,i)
end forall
!$omp end workshare
!$omp do
do j=1,jjj ; do i=1,iii
    if ( c2(j,i) <= 0 ) cycle
    a2(i,j) = ( a2(i,j) + b2(i,j) ) / c2(j,i)
end do     ; enddo
!$omp end do

!$omp workshare
forall (j=1:jjj,i=1:iii)
    x(i,j) = a1(i,j) - a2(i,j)
end forall
!$omp end workshare
!$omp end parallel
if (any((/x/)/=(/(0,m=1,jjj*iii)/))) print *,"fail"
print *,'pass'
end

elemental integer function fun ( x , y )
  integer,intent(in):: x,y
  fun = x*x/y
end
