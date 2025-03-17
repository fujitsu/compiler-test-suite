interface
  logical function func(n2,n1,x)
    integer,dimension(n2,n1):: x
  end function
  function func2(n2,n1,x) result(a)
    integer,dimension(n2,n1):: x
    integer,allocatable::a(:,:)
  end function
end interface

n1=1;n2=2
n=0

if(  func(n2,n1,x=reshape( (/1,(/(j,j=2,2)/)/),(/n2,n1/) ) ) ) then
  n=n+1 
else
 write(6,*) "NG"
endif

if( .not. &
    any(func2(n2,n1,x=reshape( (/1,(/(j,j=2,2)/)/),(/n2,n1/) ) )/= &
        reshape((/1,2/),(/2,1/)) ) ) &
         then
  n=n+1
else
 write(6,*) "NG"
endif

if( func(n2,n1,x=reshape( (/1,(/(j,j=2,2)/)/),(/n2,n1/) ) ) .and. &
    .not. &
    any(func2(n2,n1,x=reshape( (/1,(/(j,j=2,2)/)/),(/n2,n1/) ) )/= &
        reshape((/1,2/),(/2,1/)) ) ) &
         then
 n=n+1 
else
 write(6,*) "NG"
endif

if (n/=3) write(6,*) "NG"
print *,'pass'
end

logical function func(n2,n1,x)
 integer,dimension(n2,n1):: x

  if(x(1,1).eq.1.and.x(2,1).eq.2) then
    func = .true.
  else
    func = .false.
  endif
end

function func2(n2,n1,x) result(a)
 integer::x(n2,n1)
 integer,allocatable::a(:,:)

  allocate(a(n2,n1))
  a=x
end
