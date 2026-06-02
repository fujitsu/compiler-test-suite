#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed char, signed char);
extern unsigned short (*v2) (unsigned int, signed char, signed char);
extern signed short v3 (unsigned short, signed int);
extern signed short (*v4) (unsigned short, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (unsigned int, unsigned char, signed char);
extern void (*v10) (unsigned int, unsigned char, signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed short v13 (unsigned char, signed int, unsigned short, unsigned int);
extern signed short (*v14) (unsigned char, signed int, unsigned short, unsigned int);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (signed int, unsigned char, unsigned short, signed short);
extern signed char (*v20) (signed int, unsigned char, unsigned short, signed short);
extern void v21 (signed char, unsigned int, unsigned short);
extern void (*v22) (signed char, unsigned int, unsigned short);
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
unsigned char v25 (signed char, signed int);
unsigned char (*v26) (signed char, signed int) = v25;
extern void v27 (signed short, unsigned int);
extern void (*v28) (signed short, unsigned int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed char v32 = 3;
unsigned int v31 = 0U;

unsigned char v25 (signed char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 4;
unsigned short v37 = 4;
signed int v36 = 1;
trace++;
switch (trace)
{
case 5: 
{
signed short v39;
unsigned int v40;
v39 = -3 - -4;
v40 = 5U - 4U;
v27 (v39, v40);
}
break;
case 13: 
return 5;
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
unsigned int v43;
signed char v44;
signed char v45;
unsigned short v46;
v43 = v31 + 0U;
v44 = v33 + v33;
v45 = v33 - v33;
v46 = v1 (v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
