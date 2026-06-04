#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned char, unsigned short, unsigned short, signed char);
extern signed int (*v4) (unsigned char, unsigned short, unsigned short, signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned int v7 (signed short);
unsigned int (*v8) (signed short) = v7;
void v9 (signed int, unsigned int, signed int, unsigned short);
void (*v10) (signed int, unsigned int, signed int, unsigned short) = v9;
unsigned int v11 (unsigned char, unsigned char, signed int);
unsigned int (*v12) (unsigned char, unsigned char, signed int) = v11;
extern unsigned int v13 (unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned short);
extern void v15 (unsigned char, signed char, signed int, unsigned short);
extern void (*v16) (unsigned char, signed char, signed int, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (signed short, unsigned char, signed int);
extern signed int (*v22) (signed short, unsigned char, signed int);
extern unsigned short v23 (unsigned int, signed char);
extern unsigned short (*v24) (unsigned int, signed char);
extern signed short v25 (signed short, unsigned int, unsigned short, signed short);
extern signed short (*v26) (signed short, unsigned int, unsigned short, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (unsigned char, signed char);
extern signed short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
signed char v32 = -3;
unsigned short v31 = 2;

unsigned int v11 (unsigned char v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 6;
unsigned char v38 = 6;
unsigned short v37 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v40;
v40 = v17 ();
history[history_index++] = (int)v40;
}
break;
case 3: 
{
unsigned char v41;
signed char v42;
signed int v43;
unsigned short v44;
v41 = v35 - v34;
v42 = -4 - -1;
v43 = 2 + 3;
v44 = v37 - 2;
v15 (v41, v42, v43, v44);
}
break;
case 9: 
{
unsigned short v45;
v45 = v17 ();
history[history_index++] = (int)v45;
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}

void v9 (signed int v46, unsigned int v47, signed int v48, unsigned short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = -3;
signed short v51 = 0;
unsigned char v50 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 2;
unsigned short v55 = 2;
signed short v54 = 2;
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
signed short v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
