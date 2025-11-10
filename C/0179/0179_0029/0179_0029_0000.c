#include <stdio.h>
#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
signed int v3 (void);
signed int (*v4) (void) = v3;
extern unsigned int v5 (signed char, signed char);
extern unsigned int (*v6) (signed char, signed char);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 9: return -199999;
case 7: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return -111;
case 12: return -111;
case 10: 
{
unsigned int v11;
unsigned short v12;
v11=199999;
v12 = v9 (v11);
history[history_index++] = (int)v12;
return -111;
}
break;
case 8: 
{
signed int v13;
v13 = (*v4) ();
history[history_index++] = (int)v13;
return -111;
}
break;
case 6: 
{
signed int v14;
v14 = v3 ();
history[history_index++] = (int)v14;
return -111;
}
break;
case 4: 
{
signed char v15;
signed int v16;
v15='a';
v16 = (*v8) (v15);
history[history_index++] = (int)v16;
return -111;
}
break;
case 0: 
{
signed char v17;
signed int v18;
v17='a';
v18 = (*v8) (v17);
history[history_index++] = (int)v18;
return -111;
}
break;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed short v19;
v19 = (*v2) ();
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
