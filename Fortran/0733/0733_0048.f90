  integer:: a(-15:-15,3,2,4,1,5:5)=&
         reshape((/(4,5,6,1,2,3,i=1,4)/),(/1,3,2,4,1,1/))
  integer:: b(-15:-15,3,2,4,1,5:5)=-1
  integer:: bb(-15:-15,3,2,4,1,5:5)=-1
  integer:: xx(8)=-2
  do k=-15,-15
  do j=5,5
  forall (i=1:3)
     where (a(k,i,:,:,:,j)==1)
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)
     elsewhere (a(k,i,:,:,:,j)==2)
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)+1
     end where
  end forall
  end do
  end do
  if (any((/b/)/=(/(-1,-1,-1,1,3,-1,i=1,4)/)))print *,'error-1'
  call ss1(a,bb,-15)
rewind 1
read (1,*) xx;if(any(xx/=(/-1,1,-1,1,-1,1,-1,1/))) print *,'error-2'
read (1,*) xx;if(any(xx/=(/4,1,4,1,4,1,4,1/))) print *,'error-3'
read (1,*) xx;if(any(xx/=(/-1,-1,-1,-1,-1,-1,-1,-1/))) print *,'error-4'
read (1,*) xx;if(any(xx/=(/5,3,5,3,5,3,5,3/))) print *,'error-5'
read (1,*) xx;if(any(xx/=(/-1,-1,-1,-1,-1,-1,-1,-1/))) print *,'error-6'
read (1,*) xx;if(any(xx/=(/6,3,6,3,6,3,6,3/))) print *,'error-7'
print *,'pass'
  contains
   subroutine ss1(a,b,n)
  integer:: a(n:,:,:,:,:,5:)
  integer:: b(n:,:,:,:,:,5:)
  do k=n,-15
  do j=5,5
  do i=1,3
     where (a(k,i,:,:,:,j)==1)
       b(k,i,:,:,:,j)=a(k,i,:,:,:,j)
     elsewhere (a(k,i,:,:,:,j)==2)
       a(-15,i,:,:,:,5)=a(-15,i,:,:,:,5)+1
     end where
     write(1,*) b(k,i,:,:,:,j)
     write(1,*) a(-15,i,:,:,:,5)
  end do
  end do
  end do
   end subroutine
  end
