 call s1
 print *,'pass'
 end
 subroutine s1
  integer:: a(3,3,2,3)=reshape((/(m,m=0,3*3*2*3-1)/),(/3,3,2,3/))
  data n/3/
  forall(i=1:n-1,ii=1:2)
    forall(j=i+1:n,jj=1:3)
      a(i,j,ii,jj)=a(j,i,ii,jj)
    end forall
  end forall
  if (any((/a/)/=(/ &
0,1,2,1,4,5,2,5,8,9,10,11,10,13,14,11,14,17,18,19,20,19,22,23,20,&
23,26,27,28,29,28,31,32,29,32,35,36,37,38,37,40,41,38,41,44,45,46,&
47,46,49,50,47,50,53/)))write(6,*) "NG"
  end
