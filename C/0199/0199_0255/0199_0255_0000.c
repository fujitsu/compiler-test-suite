#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
extern unsigned char v3 (signed char, signed int);
extern unsigned char (*v4) (signed char, signed int);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned char v13 (unsigned short, unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, unsigned short, signed short);
extern void v15 (signed short, unsigned short, signed short);
extern void (*v16) (signed short, unsigned short, signed short);
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned char v19 (unsigned short, unsigned short, unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, unsigned short, unsigned short, signed short);
unsigned int v21 (signed char, unsigned short, signed char, signed char);
unsigned int (*v22) (signed char, unsigned short, signed char, signed char) = v21;
extern void v23 (signed short, signed int, unsigned char);
extern void (*v24) (signed short, signed int, unsigned char);
extern signed char v25 (signed char, unsigned int, unsigned int, signed int);
extern signed char (*v26) (signed char, unsigned int, unsigned int, signed int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (unsigned short, signed short, signed char, signed short);
extern unsigned short (*v30) (unsigned short, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned char v32 = 2;
unsigned char v31 = 7;

unsigned int v21 (signed char v34, unsigned short v35, signed char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
unsigned int v39 = 5U;
signed char v38 = -4;
trace++;
switch (trace)
{
case 2: 
return 7U;
case 8: 
return 3U;
case 10: 
{
signed short v41;
signed int v42;
unsigned char v43;
v41 = 2 + -2;
v42 = -3 + 0;
v43 = 2 + 3;
v23 (v41, v42, v43);
}
break;
case 12: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned int v46 = 0U;
unsigned int v45 = 7U;
signed int v44 = -4;
trace++;
switch (trace)
{
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
signed short v49;
unsigned short v50;
unsigned int v51;
signed int v52;
v49 = -1 - 1;
v50 = 2 + 5;
v51 = 1U + 0U;
v52 = v1 (v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
