#include <cassert>

int main () 
{
     {
         int arr[4] = {1,3,3,4};
         int i = 2;
         arr[i] = i--;
         assert(arr[1] == 2);
     }
     {
         int arr[4] = {1,2,3,4};
         int i = 2;
         arr[i] = i++;
         assert(arr[3] == 2);
     }
     {
         int arr[4] = {1,3,3,4};
         int i = 2;
         arr[i++] = i;
         assert(arr[2] == 2);
     }
     {
         int arr[4] = {1,3,3,4};
         int i = 2;
         arr[++i] = i;
         assert(arr[3] == 2);
     }
     {
         int arr[4] = {1,3,3,4};
         int i = 2;
         arr[i++] = i++;
         assert(arr[3] == 2);
     }
     {
         int arr[4] = {1,3,3,4};
         int i = 1;
         arr[++i] = ++i;
         assert(arr[3] == 2);
     }
     {
         int arr[4] = {1,3,3,4};
         int i = 1;
         arr[++i] = (i++);
         assert(arr[3] == 1);
     }
}
