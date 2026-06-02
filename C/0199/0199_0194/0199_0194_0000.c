#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned char v3 (unsigned int, signed int);
unsigned char (*v4) (unsigned int, signed int) = v3;
void v5 (unsigned char, signed short, signed int);
void (*v6) (unsigned char, signed short, signed int) = v5;
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern signed short v11 (signed int, signed char, unsigned short);
extern signed short (*v12) (signed int, signed char, unsigned short);
extern void v13 (unsigned int, unsigned char);
extern void (*v14) (unsigned int, unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern void v19 (unsigned int, unsigned char, signed char, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed char, unsigned int);
extern unsigned int v21 (unsigned int, signed int, signed int, unsigned int);
extern unsigned int (*v22) (unsigned int, signed int, signed int, unsigned int);
unsigned short v23 (signed int, unsigned int);
unsigned short (*v24) (signed int, unsigned int) = v23;
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed int v32 = 1;
unsigned char v31 = 0;

unsigned short v23 (signed int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -3;
unsigned int v37 = 6U;
signed short v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 6;
unsigned short v41 = 0;
signed char v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v43, signed short v44, signed int v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 1;
unsigned short v47 = 0;
signed int v46 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v49, signed int v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 5;
signed short v52 = -3;
signed short v51 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v54;
unsigned char v55;
signed char v56;
unsigned int v57;
v54 = 6U + v49;
v55 = 4 + v53;
v56 = -1 - -4;
v57 = 4U - 0U;
v19 (v54, v55, v56, v57);
}
break;
case 15: 
return v53;
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
unsigned int v60;
v60 = v1 ();
history[history_index++] = (int)v60;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
