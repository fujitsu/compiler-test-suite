module mod1
 contains
  function m_func() result(rst)
   character :: rst
   rst = 'c'
  end function
end module

use mod1

interface
 function func() result(rst)
  character :: rst
 end function
end interface

type ty1
 character     :: tc  = 'd'
 character(10) :: tc2 = '1234567890'
end type

type (ty1) :: t1

call c_sub([character(4) ::   func() // c_func() // m_func() // t1%tc])
call c_sub([character(4) ::   func() // c_func() // m_func() // t1%tc(1**1:1**1)])

call c_sub([character(4) ::   func() ,  c_func() ,  m_func() ,  t1%tc])

call c_sub([character(4) :: c_func() ,  m_func() ,  t1%tc   ])

call c_sub([character(4) ::   func() ,  m_func() ,  t1%tc   ])

call c_sub([character(4) ::   func() ,  c_func() ,  t1%tc   ])

call c_sub([character(4) ::   func() ,  c_func() ,  m_func()])

print *,'pass'

contains

subroutine c_sub(cc)
 character(*) :: cc(:)
end subroutine

function c_func() result(rst)
 character :: rst
 rst = 'b'
end function

end

function func() result(rst)
 character :: rst
 rst = 'a'
end function
