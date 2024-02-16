logical,parameter::a=BGE(o'11',o'12') !9,10
logical,parameter::b=BGE(o'12',b'00000011')
logical,parameter::c=BGE(o'4',12)
logical,parameter::d=BGE(z'f',o'12')
logical,parameter::e=BGE(z'f',b'00001010')
logical,parameter::f=BGE(b'00101010',b'00001010')
logical,parameter::m=BGE(b'00101010',10_4)
logical,parameter::n=BGE(b'00101010',10_2)
logical,parameter::o=BGE(b'00101010',10_8)
logical,parameter::p=BGE(b'00101010',10_1)
logical,parameter::q=BGE(10_4,b'00101010')
logical,parameter::r=BGE(10_2,b'00101010')
logical,parameter::s=BGE(10_8,b'00101010')
logical,parameter::t=BGE(10_1,b'00101010')
logical,parameter::u=BGE(o'4',10_1)
logical,parameter::v=BGE(o'4',10_2)
logical,parameter::w=BGE(o'4',10_4)
logical,parameter::x=BGE(o'4',10_8)
logical,parameter::y=BGE(10_1,o'4')
logical,parameter::z=BGE(10_2,o'4')
logical,parameter::aa1=BGE(10_4,o'4')
logical,parameter::bb1=BGE(10_8,o'4')
logical,parameter::cc1=BGE(z'f',10_1)
logical,parameter::dd1=BGE(z'f',10_2)
logical,parameter::ee1=BGE(z'f',10_4)
logical,parameter::ff1=BGE(z'f',10_8)
logical,parameter::gg1=BGE(10_1,z'f')
logical,parameter::hh1=BGE(10_2,z'f')
logical,parameter::ii1=BGE(10_4,z'f')
logical,parameter::jj1=BGE(10_8,z'f')
if( a .neqv. .false. )print*,"101"
if( b .neqv. .true. )print*,"101"
if( c .neqv. .false. )print*,"102"
if( d .neqv. .true. )print*,"103"
if( e .neqv. .true. )print*,"104"
if( f .neqv. .true. )print*,"105"
if( m .neqv. .true. )print*,"106"
if( n .neqv. .true. )print*,"107"
if( o .neqv. .true. )print*,"108"
if( p .neqv. .true. )print*,"109"
if( q .neqv. .false. )print*,"110"
if( r .neqv. .false. )print*,"111"
if( s .neqv. .false. )print*,"112"
if( t .neqv. .false. )print*,"113"
if( u .neqv. .false. )print*,"114"
if( v .neqv. .false. )print*,"115"
if( w .neqv. .false. )print*,"116"
if( x .neqv. .false. )print*,"117"
if( y .neqv. .true. )print*,"118"
if( z .neqv. .true. )print*,"119"
if( aa1 .neqv. .true. )print*,"120"
if( bb1 .neqv. .true. )print*,"121"
if( cc1 .neqv. .true. )print*,"122"
if( dd1 .neqv. .true. )print*,"123"
if( ee1 .neqv. .true. )print*,"124"
if( ff1 .neqv. .true. )print*,"125"
if( gg1 .neqv. .false. )print*,"126"
if( hh1 .neqv. .false. )print*,"127"
if( ii1 .neqv. .false. )print*,"128"
if( jj1 .neqv. .false. )print*,"129"
print*,"PASS"
end

