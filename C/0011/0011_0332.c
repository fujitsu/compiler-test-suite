#include  <stdio.h>

#include <stdio.h>
#define l 0
#define h 1
struct _nd2 {
  char y,y__;
};

struct _rsff {
  char q,q__;
  char q_,q___;
  struct _nd2 g1;
  struct _nd2 g2;
};

struct _rsff rsff_d;
int now;

int _scanf(char *p, char *a, char *b);
void rsff_f(struct _rsff *_p,char s_, char r_);
int rsff_c(struct _rsff *_p, char q, char q_);
void nd2_f(struct _nd2 *_p, char a, char b);
int nd2_c(struct _nd2 *_p, char y);

int _scanf(char *p, char *a, char *b)
{
   static int count=0;
   static struct tag {
     int i;
     int j;
   } data[] = {  { 0,0 },
                     { 0,1 },
                     { 1,0 },
                     { 1,1 },
                     { -1,0 } };
   if( data[count].i == -1 ) {
     return (EOF);
   }
   *a = data[count].i;
   *b = data[count].j;
   count++;
   return !EOF;
}
int main()
{
   char s_, r_;
   now = 0;
   while( _scanf("%d %d2",&s_,&r_) != EOF ) {
     rsff_f(&rsff_d,s_,r_);
{
   static int ans[] = {
       0,  0,  1,  1,
       0,  1,  1,  0,
       1,  0,  0,  1,
       1,  1,  0,  1
   };
   static int c=0;
   if( s_ != ans[c++] ) puts(" NG ");
   if( r_ != ans[c++] ) puts(" NG ");
   if( rsff_d.q != ans[c++] ) puts(" NG ");
   if( rsff_d.q_ != ans[c++] ) puts(" NG ");
}
     now++;
   }
   puts("OK");
}

void rsff_f(struct _rsff *_p,char s_, char r_)
{
  if( ! now ) {
    _p -> q__ = h;
    _p -> q___ = h;
  }
  do {
    nd2_f(&_p -> g1, s_, *(char *)&_p -> g2 );
    nd2_f(&_p -> g2, r_, *(char *)&_p -> g1 );
    _p -> q = *(char *)&_p -> g1;
    _p -> q_ = *(char *)&_p -> g2;
  } while( rsff_c ( _p, _p -> q, _p -> q_ ));
}

int rsff_c(struct _rsff *_p, char q, char q_)
{
  int __f = 0;
  if( _p -> q__ != q ) {
    _p -> q__ = q; __f = 1;
  }
  if( _p -> q___ != q_ ) {
    _p -> q___ = q_; __f = 1;
  }
  return (__f);
}

void nd2_f(struct _nd2 *_p, char a, char b)
{
  if( !now ) {
    _p -> y__ = h;
  }
  do {
    _p -> y = ~(a & b) & 1;
  } while( nd2_c (_p,_p->y));
}

int nd2_c(struct _nd2 *_p, char y)
{
  int __f = 0;
  if( _p -> y__ != y ) {
    _p -> y__ = y;
    __f  = 1;
  }
  return (__f);
}
