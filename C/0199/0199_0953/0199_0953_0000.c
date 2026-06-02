#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, unsigned int, signed int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int, signed int, unsigned int);
extern signed char v9 (unsigned char, unsigned int, signed short);
extern signed char (*v10) (unsigned char, unsigned int, signed short);
unsigned char v11 (unsigned short, signed short);
unsigned char (*v12) (unsigned short, signed short) = v11;
extern void v13 (unsigned short, signed short);
extern void (*v14) (unsigned short, signed short);
unsigned int v15 (signed short, unsigned short);
unsigned int (*v16) (signed short, unsigned short) = v15;
extern unsigned int v17 (signed int, signed short);
extern unsigned int (*v18) (signed int, signed short);
extern unsigned char v19 (signed char, unsigned char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char, unsigned char);
extern signed int v21 (signed int, signed short);
extern signed int (*v22) (signed int, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (unsigned char, unsigned short);
extern void (*v26) (unsigned char, unsigned short);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern void v29 (unsigned int, unsigned char, unsigned short, signed int);
extern void (*v30) (unsigned int, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
unsigned short v32 = 6;
unsigned int v31 = 3U;

unsigned int v15 (signed short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -1;
unsigned short v37 = 4;
signed int v36 = 1;
trace++;
switch (trace)
{
case 2: 
return 4U;
case 4: 
return 5U;
case 6: 
{
unsigned char v39;
unsigned short v40;
v39 = 6 - 4;
v40 = 1 - v37;
v25 (v39, v40);
}
break;
case 8: 
{
unsigned char v41;
unsigned short v42;
v41 = 5 - 1;
v42 = v35 - v37;
v25 (v41, v42);
}
break;
case 10: 
return 5U;
case 12: 
return 6U;
case 14: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v43, signed short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 7;
signed short v46 = -1;
signed char v45 = 0;
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
signed char v50;
unsigned char v51;
v50 = -4 + -2;
v51 = v1 (v50);
history[history_index++] = (int)v51;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
