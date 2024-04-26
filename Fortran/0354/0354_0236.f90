#define mdim 145

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<1E-14).or.(a/=0.and.abs(a-b)/abs(a)<1E-14))

subroutine sub1(a, xx, n_low, n_upp, js, je, cc, bi)
  implicit double precision (a-h,o-z)
  dimension xx(5,mdim,mdim)
  dimension cc(mdim),bi(mdim)
  nlp1 =  n_low + 1
  nupnl = n_upp+n_low
  do j=js,je
     do i = nlp1,n_upp
        ii=i-n_low+1
        do k = 1, 4
           xx(k, i,j) =(xx(k, i,j)-a*xx(k,i-1,j))*bi(ii)
        end do
     enddo
     do it1= nlp1,n_upp
        i = nupnl - it1
        ii= i-n_low+1
        do k = 1, 4
           xx(k,i,j)= xx(k,i,j)-cc(ii)*xx(k,i+1,j)
        end do
     enddo
  enddo
end subroutine sub1

subroutine master(a, xx, n_low, n_upp, js, je, cc, bi)
  implicit double precision (a-h,o-z)
  dimension xx(5,mdim,mdim)
  dimension cc(mdim),bi(mdim)
  nlp1 =  n_low + 1
  nupnl = n_upp+n_low

  do j=js,je
     do i = nlp1,n_upp
        ii=i-n_low+1
        do k = 1, 4
           xx(k, i,j) =(xx(k, i,j)-a*xx(k,i-1,j))*bi(ii)
        end do
     enddo
     do it1= nlp1,n_upp
        i = nupnl - it1
        ii= i-n_low+1
        do k = 1, 4
           xx(k,i,j)= xx(k,i,j)-cc(ii)*xx(k,i+1,j)
        end do
     enddo
  enddo
end subroutine master

subroutine init(xx, yy, cc, bi)
  implicit double precision (a-h,o-z)
  double precision xx(5, mdim, mdim)
  double precision yy(5, mdim, mdim)
  double precision cc(mdim), bi(mdim)
  double precision tmp
  integer::i
  
  do i= 1, mdim
     cc(i) = cos(i*1.1)*cos(i*1.0+100.0)*0.01
     bi(i) = sin(i*1.1)*sin(i*13.1)*0.01
  end do
  
  do i = 1, mdim
     do j = 1, mdim
        do k = 1, 5
           tmp = sin(j*17.0)*cos(j*i*1.1)
           xx(k, j, i) = tmp
           yy(k, j, i) = tmp
        end do
     end do
  end do
end subroutine init

subroutine init2(a, n_low, n_upp, js, je, i)
  implicit double precision (a-h,o-z)
  double precision :: a
  integer::n_low, n_upp, js, je, i

  n_low = 1
  n_upp = mdim
  
  js = 1
  je = mod(i,mdim)+1
  
  a = mod(i*i, 10*mdim)
end subroutine init2

subroutine check(xx,yy,indx)
  double precision xx(5, mdim, mdim)
  double precision yy(5, mdim, mdim)
  double precision x, y
  integer::i,j,k
  do i = 1, mdim
     do j = 1, mdim
        do k = 1, 5
           x = xx(k,j,i)
           y = yy(k,j,i)
           if (.not.IS_EQUAL(x, y)) then
              print *, "error: ", k,j,i, "x:",x, "y:", y
           end if
        end do
     end do
  end do
  print *, "ok:" ,indx
end subroutine check

program main
  implicit double precision (a-h,o-z)
  double precision xx(5, mdim, mdim)
  double precision yy(5, mdim, mdim)
  double precision cc(mdim), bi(mdim)
  double precision :: a
  integer::n_low, n_upp, js, je, i
  integer,parameter::iteration=140

  call init (xx, yy, cc, bi)
  
  do i=1, iteration
     call init2 (a, n_low, n_upp, js, je, i)
     call sub1 (a, xx, n_low, n_upp, js, je, cc, bi)
     call master (a, yy, n_low, n_upp, js, je, cc, bi)
  end do
  call check(xx,yy,iteration)
end program
