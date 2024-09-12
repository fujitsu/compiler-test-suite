real,parameter::a=0.1
complex,parameter::b=0.1
real(8),parameter::c=0.1
complex(8),parameter::d=0.1
real,parameter::e=tan( a )
complex,parameter::f=tan( b )
real(8),parameter::g=tan( c )
complex(8),parameter::h=tan( d )
real,parameter::e1=atan( a )
complex,parameter::f1=atan( b )
real(8),parameter::g1=atan( c )
complex(8),parameter::h1=atan( d )
real,parameter::e2=acos( a )
complex,parameter::f2=acos( b )
real(8),parameter::g2=acos( c )
complex(8),parameter::h2=acos( d )
write(1,*) e,f,g,h,e1,f1,g1,h1,e2,f2,g2,h2
print *,'pass'
end
