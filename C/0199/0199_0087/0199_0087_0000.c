#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed short, unsigned char);
extern void (*v4) (signed short, unsigned char);
void v5 (signed short, unsigned short, unsigned char, signed char);
void (*v6) (signed short, unsigned short, unsigned char, signed char) = v5;
extern unsigned short v7 (signed char, unsigned char, unsigned int, signed char);
extern unsigned short (*v8) (signed char, unsigned char, unsigned int, signed char);
unsigned char v9 (unsigned char, unsigned int, unsigned char, unsigned int);
unsigned char (*v10) (unsigned char, unsigned int, unsigned char, unsigned int) = v9;
extern signed char v11 (unsigned short, signed int);
extern signed char (*v12) (unsigned short, signed int);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern unsigned short v15 (unsigned short, signed char);
extern unsigned short (*v16) (unsigned short, signed char);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned char, unsigned short, signed short);
extern signed int (*v22) (unsigned char, unsigned short, signed short);
extern unsigned int v23 (signed int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short);
extern void v25 (unsigned int, signed short);
extern void (*v26) (unsigned int, signed short);
unsigned short v27 (signed char, unsigned short, unsigned short, unsigned int);
unsigned short (*v28) (signed char, unsigned short, unsigned short, unsigned int) = v27;
extern unsigned char v29 (signed short, signed int);
extern unsigned char (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned int v32 = 6U;
unsigned int v31 = 6U;

unsigned short v27 (signed char v34, unsigned short v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
unsigned int v39 = 3U;
signed int v38 = -2;
trace++;
switch (trace)
{
case 7: 
return v36;
case 9: 
return 4;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v41, unsigned int v42, unsigned char v43, unsigned int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 1;
signed int v46 = 0;
unsigned char v45 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v48, unsigned short v49, unsigned char v50, signed char v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 6U;
unsigned short v53 = 7;
unsigned short v52 = 3;
trace++;
switch (trace)
{
case 1: 
return;
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
unsigned char v57;
v57 = v1 ();
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
