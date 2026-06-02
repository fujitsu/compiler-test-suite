#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (unsigned char, signed int, signed char);
extern signed char (*v4) (unsigned char, signed int, signed char);
extern void v5 (void);
extern void (*v6) (void);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed short v9 (signed char, signed short, unsigned char);
extern signed short (*v10) (signed char, signed short, unsigned char);
unsigned short v11 (unsigned int, unsigned char, signed char);
unsigned short (*v12) (unsigned int, unsigned char, signed char) = v11;
extern unsigned short v13 (signed int, signed short);
extern unsigned short (*v14) (signed int, signed short);
extern unsigned char v15 (signed short, unsigned int, signed int, unsigned short);
extern unsigned char (*v16) (signed short, unsigned int, signed int, unsigned short);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned char v23 (unsigned int, unsigned char, signed char, unsigned char);
unsigned char (*v24) (unsigned int, unsigned char, signed char, unsigned char) = v23;
signed char v25 (unsigned int, unsigned short, unsigned short, signed int);
signed char (*v26) (unsigned int, unsigned short, unsigned short, signed int) = v25;
extern signed int v27 (signed short, unsigned short);
extern signed int (*v28) (signed short, unsigned short);
extern unsigned short v29 (signed int, unsigned short, unsigned char, signed int);
extern unsigned short (*v30) (signed int, unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned int v32 = 7U;
unsigned short v31 = 4;

signed char v25 (unsigned int v34, unsigned short v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
signed int v39 = 3;
signed short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v41, unsigned char v42, signed char v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 3;
unsigned short v46 = 0;
signed short v45 = -3;
trace++;
switch (trace)
{
case 1: 
return 3;
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v48, unsigned char v49, signed char v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -4;
unsigned short v52 = 2;
signed char v51 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned char v56 = 7;
unsigned short v55 = 5;
unsigned short v54 = 2;
trace++;
switch (trace)
{
case 5: 
{
signed short v57;
unsigned short v58;
signed int v59;
v57 = 3 - -2;
v58 = 0 + 0;
v59 = v27 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 7: 
return -3;
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
unsigned char v62;
v62 = v1 ();
history[history_index++] = (int)v62;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
