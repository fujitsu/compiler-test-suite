#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern signed short v5 (signed short, unsigned char, signed short);
extern signed short (*v6) (signed short, unsigned char, signed short);
extern unsigned int v7 (signed char, signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned int, unsigned char);
signed char v9 (void);
signed char (*v10) (void) = v9;
signed short v11 (signed char, signed char, unsigned short, unsigned char);
signed short (*v12) (signed char, signed char, unsigned short, unsigned char) = v11;
extern unsigned char v13 (signed char, unsigned int);
extern unsigned char (*v14) (signed char, unsigned int);
extern signed char v15 (signed short, signed int, unsigned short);
extern signed char (*v16) (signed short, signed int, unsigned short);
extern signed short v17 (signed int);
extern signed short (*v18) (signed int);
extern signed int v19 (unsigned short, signed char, signed int, signed int);
extern signed int (*v20) (unsigned short, signed char, signed int, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned char v23 (signed short, unsigned char, unsigned char, signed int);
extern unsigned char (*v24) (signed short, unsigned char, unsigned char, signed int);
extern unsigned char v25 (unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, signed int, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (unsigned char, signed char);
extern void (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed char v32 = -1;
unsigned char v31 = 4;

signed short v11 (signed char v34, signed char v35, unsigned short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 3U;
unsigned char v39 = 1;
unsigned short v38 = 6;
trace++;
switch (trace)
{
case 9: 
{
signed short v41;
unsigned char v42;
unsigned char v43;
signed int v44;
unsigned char v45;
v41 = -1 + 3;
v42 = v39 + 1;
v43 = v39 + v37;
v44 = 3 - 1;
v45 = v23 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed char v48 = -3;
signed int v47 = -1;
signed short v46 = -4;
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
signed char v51;
v51 = v1 ();
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
