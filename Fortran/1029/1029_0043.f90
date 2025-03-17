interface
  logical function func(x)
    integer,dimension(2,1):: x
  end function
end interface

n=0
i=1

if( i.eq.1 .and. func(x=reshape( (/1,(/(j,j=2,2)/)/),(/2,1/) ) ) &
           .or. .false. ) then
   n=n+1 
endif

if( i.eq.1 .and. func(x=reshape( (/1,(/(j,j=2,2)/)/),(/2,1/) ) ) &
    .or. i.gt.10000 ) then
   n=n+1 
endif

if (n/=2) write(6,*) "NG"
print *,'pass'
end

logical function func(x)
integer,dimension(2,1):: x

if(x(1,1).eq.1.and.x(2,1).eq.2) then
  func = .true.
else
  func = .false.
endif
end
