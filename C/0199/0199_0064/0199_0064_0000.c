#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, unsigned char, unsigned char, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned char, signed char);
signed int v3 (unsigned short, unsigned char, unsigned short, unsigned int);
signed int (*v4) (unsigned short, unsigned char, unsigned short, unsigned int) = v3;
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed int v7 (signed int, unsigned int, signed int);
extern signed int (*v8) (signed int, unsigned int, signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned char v13 (signed char);
unsigned char (*v14) (signed char) = v13;
extern unsigned short v15 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v16) (unsigned int, unsigned char, signed int, signed char);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern unsigned int v25 (unsigned int, unsigned int, unsigned int, signed int);
extern unsigned int (*v26) (unsigned int, unsigned int, unsigned int, signed int);
extern signed char v27 (unsigned int);
extern signed char (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned short v32 = 1;
unsigned short v31 = 5;

unsigned char v13 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -4;
unsigned short v36 = 2;
unsigned char v35 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v38;
unsigned char v39;
v38 = 1U - 6U;
v39 = v17 (v38);
history[history_index++] = (int)v39;
}
break;
case 3: 
{
unsigned int v40;
unsigned char v41;
v40 = 4U + 2U;
v41 = v17 (v40);
history[history_index++] = (int)v41;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v42, unsigned char v43, unsigned short v44, unsigned int v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 3;
signed short v47 = 3;
unsigned char v46 = 1;
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
unsigned int v51;
unsigned char v52;
unsigned char v53;
signed char v54;
v51 = 0U - 7U;
v52 = 0 - 3;
v53 = 3 - 2;
v54 = -4 - -2;
v1 (v51, v52, v53, v54);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
