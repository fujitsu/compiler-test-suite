#include <stdio.h>
#include <stdlib.h>
unsigned char v1 (signed short);
unsigned char (*v2) (signed short) = v1;
extern signed short v3 (signed int, unsigned char);
extern signed short (*v4) (signed int, unsigned char);
signed short v5 (signed char);
signed short (*v6) (signed char) = v5;
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern signed short v15 (signed int, signed short);
extern signed short (*v16) (signed int, signed short);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern void v19 (unsigned int, signed int, signed int, unsigned short);
extern void (*v20) (unsigned int, signed int, signed int, unsigned short);
extern signed char v21 (signed char, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned short, signed short);
extern signed char v23 (signed char, unsigned short, unsigned short);
extern signed char (*v24) (signed char, unsigned short, unsigned short);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed short v32 = -1;
signed int v31 = 2;

signed char v27 (void)
{
{
for (;;) {
signed char v36 = 1;
unsigned char v35 = 1;
signed short v34 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 2U;
signed int v39 = -2;
unsigned short v38 = 7;
trace++;
switch (trace)
{
case 7: 
{
signed char v41;
signed char v42;
v41 = 1 - v37;
v42 = v13 (v41);
history[history_index++] = (int)v42;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

unsigned char v1 (signed short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -2;
unsigned char v45 = 1;
signed char v44 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v47;
unsigned short v48;
v47 = v45 + v45;
v48 = v25 (v47);
history[history_index++] = (int)v48;
}
break;
case 9: 
{
signed int v49;
signed short v50;
signed short v51;
v49 = 3 + -4;
v50 = v43 - v43;
v51 = v15 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 11: 
return v45;
case 16: 
return v45;
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
signed short v54;
unsigned char v55;
v54 = v32 - -3;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
