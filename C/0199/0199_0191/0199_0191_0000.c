#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
extern signed char v3 (signed int, unsigned short, signed int);
extern signed char (*v4) (signed int, unsigned short, signed int);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed char v7 (unsigned char, unsigned int, unsigned char, signed int);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char, signed int);
extern void v9 (unsigned int, signed short, signed char);
extern void (*v10) (unsigned int, signed short, signed char);
signed char v11 (unsigned short, signed short);
signed char (*v12) (unsigned short, signed short) = v11;
extern signed short v13 (signed short, signed char, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, signed char, unsigned short);
signed int v15 (signed char, unsigned char);
signed int (*v16) (signed char, unsigned char) = v15;
extern void v17 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v18) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern signed short v23 (unsigned short, signed char, unsigned int, signed short);
extern signed short (*v24) (unsigned short, signed char, unsigned int, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (signed short, signed char, unsigned char, unsigned short);
extern signed short (*v28) (signed short, signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned char v32 = 7;
unsigned char v31 = 1;

signed int v15 (signed char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 3;
unsigned int v37 = 6U;
signed char v36 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v39;
v39 = v25 ();
history[history_index++] = (int)v39;
}
break;
case 3: 
{
signed char v40;
v40 = v25 ();
history[history_index++] = (int)v40;
}
break;
case 5: 
{
unsigned char v41;
unsigned char v42;
signed short v43;
v41 = v35 - 6;
v42 = v35 + v35;
v43 = v21 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v44, signed short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = -3;
unsigned int v47 = 0U;
signed int v46 = -4;
trace++;
switch (trace)
{
case 7: 
{
signed int v49;
signed char v50;
v49 = -2 + -3;
v50 = v19 (v49);
history[history_index++] = (int)v50;
}
break;
case 13: 
return 2;
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
signed int v53;
unsigned short v54;
v53 = 3 - 2;
v54 = 7 - 0;
v1 (v53, v54);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
