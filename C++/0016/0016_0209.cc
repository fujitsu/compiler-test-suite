extern "C" void printf(char*,...);
int i=0;
class A {
 public:
 A (){i++; a=i; }
 int a;
};
A obj;
int main(){
  if (obj.a==i)
    printf("NO EH exit . OK\n");
  i++;
} 
