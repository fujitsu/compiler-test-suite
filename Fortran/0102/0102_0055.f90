logical,parameter::a=BLE(o'11',o'12')
logical,parameter::b=BLE(o'12',b'00000011')
logical,parameter::c=BLE(o'4',12)
logical,parameter::d=BLE(z'f',o'12')
logical,parameter::e=BLE(z'f',b'00001010')
logical,parameter::f=BLE(b'00101010',b'00001010')
logical,parameter::m=BLE(b'00101010',10_4)
logical,parameter::n=BLE(b'00101010',10_2)
logical,parameter::o=BLE(b'00101010',10_8)
logical,parameter::p=BLE(b'00101010',10_1)
logical,parameter::q=BLE(10_4,b'00101010')
logical,parameter::r=BLE(10_2,b'00101010')
logical,parameter::s=BLE(10_8,b'00101010')
logical,parameter::t=BLE(10_1,b'00101010')
logical,parameter::u=BLE(o'4',10_1)
logical,parameter::v=BLE(o'4',10_2)
logical,parameter::w=BLE(o'4',10_4)
logical,parameter::x=BLE(o'4',10_8)
logical,parameter::y=BLE(10_1,o'4')
logical,parameter::z=BLE(10_2,o'4')
logical,parameter::aa1=BLE(10_4,o'4')
logical,parameter::bb1=BLE(10_8,o'4')
logical,parameter::cc1=BLE(z'f',10_1)
logical,parameter::dd1=BLE(z'f',10_2)
logical,parameter::ee1=BLE(z'f',10_4)
logical,parameter::ff1=BLE(z'f',10_8)
logical,parameter::gg1=BLE(10_1,z'f')
logical,parameter::hh1=BLE(10_2,z'f')
logical,parameter::ii1=BLE(10_4,z'f')
logical,parameter::jj1=BLE(10_8,z'f')
logical,parameter::jj2=BLE(0,z'f')
logical,parameter::jj3=BLE(0,o'7')
logical,parameter::jj4=BLE(0,b'101')
logical,parameter::jj5=BLE(0,-1_1)
logical,parameter::jj6=BLE(0,23_4)
logical,parameter::jj7=BLE(0,-32_8)
logical,parameter::jj8=BLE(0,-44_2)
logical,parameter::jj9=BLE(-1,0)
if( a .neqv. .true. )print*,"100"
if( b .neqv. .false. )print*,"101"
if( c .neqv. .true. )print*,"102"
if( d .neqv. .false. )print*,"103"
if( e .neqv. .false.)print*,"104"
if( f .neqv. .false.)print*,"105"
if( m .neqv. .false.)print*,"106"
if( n .neqv. .false.)print*,"107"
if( o .neqv. .false.)print*,"108"
if( p .neqv. .false.)print*,"109"
if( q .neqv. .true.)print*,"110"
if( r .neqv. .true.)print*,"111"
if( s .neqv. .true. )print*,"112"
if( t .neqv. .true.)print*,"113"
if( u .neqv. .true. )print*,"114"
if( v .neqv. .true. )print*,"115"
if( w .neqv. .true.)print*,"116"
if( x .neqv. .true. )print*,"117"
if( y .neqv. .false. )print*,"118"
if( z .neqv. .false.)print*,"119"
if( aa1 .neqv. .false. )print*,"120"
if( bb1 .neqv. .false. )print*,"121"
if( cc1 .neqv. .false. )print*,"122"
if( dd1 .neqv. .false. )print*,"123"
if( ee1 .neqv. .false.)print*,"124"
if( ff1 .neqv. .false. )print*,"125"
if( gg1 .neqv. .true.)print*,"126"
if( hh1 .neqv. .true. )print*,"127"
if( ii1 .neqv. .true. )print*,"128"
if( jj1 .neqv. .true.)print*,"129"
if( jj2 .neqv. .true.)print*,"130"
if( jj3 .neqv. .true.)print*,"131"
if( jj4 .neqv. .true.)print*,"132"
if( jj5 .neqv. .true.)print*,"133"
if( jj6 .neqv. .true.)print*,"134"
if( jj7 .neqv. .true.)print*,"135"
if( jj8 .neqv. .true.)print*,"136"
if( jj9 .neqv. .false.)print*,"137"
print*,"PASS"
end
