
extern "C" void printf(char*,...);

int ans=10;
class A {
public:
 int a; 
 A(){ a=0;}
 A&  operator++(){++ans; return *this;}
 A&  operator++(int i){ ans++;return *this;}
 A&  operator--(){ --ans; return *this;}
 A&  operator--(int i){ ans--; return *this;}
 int operator+=(int i){ ans+=i; return i;}
};

void func()
{
    A	a;
    A	b;
    (A)a += 1 ;
    ((A)a) += 1;
    b = ((A)a)++;
    b = ((A)a)--;
    b = ++((A)a);
    b = --((A)a);
}


void func2()
{
    int x=10;
    char y=10;
    int	&a=x;
    char &b=y;

#if LONG64 || defined(__aarch64__) || defined(_LP64)
    ((int&)a)++;   
     ((char&)b)--;
     ++((int&)a);  
     --((char&)b);
#else
     ((long&)a)++;
     ((char&)b)--;
     ++((long&)a);
     --((char&)b);
#endif
  if (a == 12 && b==8)
     ans += 100;
  else
     ans -= 100;

}

int main(){
 func();
 func2();
  if (ans == 112)
     printf("ok\n");
  else
     printf("ng %d\n",ans);
}



