logical,parameter::a=BLT(o'11',o'12') !9,10
logical,parameter::b=BLT(o'12',b'00000011')
logical,parameter::c=BLT(o'4',12)
logical,parameter::d=BLT(z'f',o'12')
logical,parameter::e=BLT(z'f',b'00001010')
logical,parameter::f=BLT(b'00101010',b'00001010')
logical,parameter::m=BLT(b'00101010',10_4)
logical,parameter::n=BLT(b'00101010',10_2)
logical,parameter::o=BLT(b'00101010',10_8)
logical,parameter::p=BLT(b'00101010',10_1)
logical,parameter::q=BLT(10_4,b'00101010')
logical,parameter::r=BLT(10_2,b'00101010')
logical,parameter::s=BLT(10_8,b'00101010')
logical,parameter::t=BLT(10_1,b'00101010')
logical,parameter::u=BLT(o'4',10_1)
logical,parameter::v=BLT(o'4',10_2)
logical,parameter::w=BLT(o'4',10_4)
logical,parameter::x=BLT(o'4',10_8)
logical,parameter::y=BLT(10_1,o'4')
logical,parameter::z=BLT(10_2,o'4')
logical,parameter::aa1=BLT(10_4,o'4')
logical,parameter::bb1=BLT(10_8,o'4')
logical,parameter::cc1=BLT(z'f',10_1)
logical,parameter::dd1=BLT(z'f',10_2)
logical,parameter::ee1=BLT(z'f',10_4)
logical,parameter::ff1=BLT(z'f',10_8)
logical,parameter::gg1=BLT(10_1,z'f')
logical,parameter::hh1=BLT(10_2,z'f')
logical,parameter::ii1=BLT(10_4,z'f')
logical,parameter::jj1=BLT(10_8,z'f')
logical,parameter::jj2=BLT(0,-1)
logical,parameter::jj3=BLT(z'FF',z'FC')
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
if( jj3 .neqv. .false.)print*,"131"
print*,"PASS"
end

