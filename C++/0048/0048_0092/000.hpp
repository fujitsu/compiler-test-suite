#ifndef _B_HPP
#define _B_HPP

extern int g_val;

inline namespace InlineSpace
{
#define DECL_SUBN_1(N) \
  void sub##N(void)

  
  DECL_SUBN_1(1);
  
  DECL_SUBN_1(2);
  
  DECL_SUBN_1(3);
  
  DECL_SUBN_1(4);
  
  DECL_SUBN_1(5);

#define DECL_SUBN_2(N) \
  void sub##N(void) throw()

  
  DECL_SUBN_2(6);
  
  DECL_SUBN_2(7);
  
  DECL_SUBN_2(8);
  
  DECL_SUBN_2(9);
  
  DECL_SUBN_2(10);

#define DECL_SUBN_3(N) \
  void sub##N(void) noexcept

  
  DECL_SUBN_3(11);
  
  DECL_SUBN_3(12);
  
  DECL_SUBN_3(13);
  
  DECL_SUBN_3(14);
  
  DECL_SUBN_3(15);

#define DECL_SUBN_4(N) \
  void sub##N(void) noexcept(true)

  
  DECL_SUBN_4(16);
  
  DECL_SUBN_4(17);
  
  DECL_SUBN_4(18);
  
  DECL_SUBN_4(19);
  
  DECL_SUBN_4(20);

#define DECL_SUBN_5(N) \
  void sub##N(void) noexcept(false)

  
  DECL_SUBN_5(21);
  
  DECL_SUBN_5(22);
  
  DECL_SUBN_5(23);
  
  DECL_SUBN_5(24);
  
  DECL_SUBN_5(25);
}

#endif
