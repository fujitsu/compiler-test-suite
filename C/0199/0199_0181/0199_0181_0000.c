#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (signed char, unsigned int);
extern unsigned int (*v8) (signed char, unsigned int);
extern unsigned int v9 (unsigned short, signed char, signed int, signed int);
extern unsigned int (*v10) (unsigned short, signed char, signed int, signed int);
signed char v11 (signed int);
signed char (*v12) (signed int) = v11;
extern void v13 (void);
extern void (*v14) (void);
unsigned int v15 (signed char);
unsigned int (*v16) (signed char) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v21 (signed int, unsigned int, unsigned short);
extern unsigned short (*v22) (signed int, unsigned int, unsigned short);
extern signed short v23 (unsigned int, signed char);
extern signed short (*v24) (unsigned int, signed char);
extern unsigned int v25 (unsigned int, signed int, signed char, unsigned char);
extern unsigned int (*v26) (unsigned int, signed int, signed char, unsigned char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed char v32 = 2;
unsigned short v31 = 0;

unsigned int v15 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 3;
unsigned int v36 = 6U;
signed char v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 5;
signed int v40 = -1;
unsigned int v39 = 2U;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v42;
v42 = v17 ();
history[history_index++] = (int)v42;
}
break;
case 13: 
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
unsigned int v45;
v45 = 3U - 0U;
v1 (v45);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
