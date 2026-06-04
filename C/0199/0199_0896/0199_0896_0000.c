#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, unsigned int);
extern void (*v2) (unsigned int, unsigned short, unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, signed int, unsigned int);
extern signed short (*v6) (signed short, unsigned char, signed int, unsigned int);
signed short v7 (signed int, unsigned short);
signed short (*v8) (signed int, unsigned short) = v7;
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
unsigned short v11 (unsigned char, signed char, unsigned int);
unsigned short (*v12) (unsigned char, signed char, unsigned int) = v11;
extern signed char v13 (signed char, signed char, signed int);
extern signed char (*v14) (signed char, signed char, signed int);
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
extern unsigned int v17 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char, signed int);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed short v21 (unsigned short, unsigned short);
extern signed short (*v22) (unsigned short, unsigned short);
extern unsigned int v23 (unsigned short, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned int, signed char, unsigned short);
extern void v25 (unsigned char, signed short, unsigned int);
extern void (*v26) (unsigned char, signed short, unsigned int);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed int v32 = 3;
unsigned short v31 = 0;

unsigned char v19 (void)
{
{
for (;;) {
unsigned short v36 = 2;
signed short v35 = 1;
signed short v34 = 2;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v37;
unsigned int v38;
signed char v39;
unsigned short v40;
unsigned int v41;
v37 = v36 + v36;
v38 = 5U + 2U;
v39 = 2 - 0;
v40 = 5 + v36;
v41 = v23 (v37, v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v42, signed char v43, unsigned int v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 1;
unsigned short v46 = 0;
unsigned char v45 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v48, unsigned short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = -2;
signed short v51 = -4;
unsigned int v50 = 7U;
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
unsigned int v55;
unsigned short v56;
unsigned int v57;
v55 = 1U - v33;
v56 = 1 + v31;
v57 = 4U + 0U;
v1 (v55, v56, v57);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
