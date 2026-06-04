#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char, unsigned char, unsigned char);
extern signed short v5 (unsigned char, unsigned char);
extern signed short (*v6) (unsigned char, unsigned char);
extern signed char v7 (unsigned int, unsigned char, unsigned int);
extern signed char (*v8) (unsigned int, unsigned char, unsigned int);
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
extern unsigned short v11 (unsigned short, signed char, unsigned short);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern void v15 (signed char, signed char);
extern void (*v16) (signed char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed char v21 (signed short, signed char, unsigned short, signed int);
signed char (*v22) (signed short, signed char, unsigned short, signed int) = v21;
extern signed short v23 (unsigned char, unsigned short, unsigned short, signed short);
extern signed short (*v24) (unsigned char, unsigned short, unsigned short, signed short);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
unsigned short v32 = 0;
signed char v31 = -3;

signed char v21 (signed short v34, signed char v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 0;
unsigned int v39 = 5U;
unsigned int v38 = 3U;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v41;
unsigned char v42;
v41 = v39 - v38;
v42 = v29 (v41);
history[history_index++] = (int)v42;
}
break;
case 6: 
return -2;
case 10: 
return -1;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
