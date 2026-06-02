#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned char v5 (signed int, signed short, unsigned short);
extern unsigned char (*v6) (signed int, signed short, unsigned short);
signed short v9 (unsigned char, unsigned short, unsigned int, unsigned int);
signed short (*v10) (unsigned char, unsigned short, unsigned int, unsigned int) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (unsigned char, unsigned short);
extern signed char (*v14) (unsigned char, unsigned short);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern signed int v19 (signed char, unsigned short);
extern signed int (*v20) (signed char, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, unsigned char, unsigned char);
extern void (*v24) (unsigned int, unsigned char, unsigned char);
extern signed short v25 (signed int, signed int, signed char);
extern signed short (*v26) (signed int, signed int, signed char);
extern unsigned short v27 (signed int, signed short);
extern unsigned short (*v28) (signed int, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed int v32 = 1;
unsigned char v31 = 7;

signed short v9 (unsigned char v34, unsigned short v35, unsigned int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -3;
signed short v39 = -3;
signed short v38 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v41;
signed short v42;
unsigned short v43;
v41 = v40 - -2;
v42 = v39 + -4;
v43 = v27 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 9: 
return v38;
case 12: 
return v39;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v46;
v46 = 7U + 5U;
v1 (v46);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
