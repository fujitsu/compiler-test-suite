#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (signed char, unsigned int);
extern signed char (*v6) (signed char, unsigned int);
signed char v7 (unsigned char);
signed char (*v8) (unsigned char) = v7;
extern unsigned int v9 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char, unsigned char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (signed short, signed int);
extern signed char (*v14) (signed short, signed int);
extern void v15 (unsigned char, signed int, signed int, signed char);
extern void (*v16) (unsigned char, signed int, signed int, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
unsigned char v21 (signed int, signed char);
unsigned char (*v22) (signed int, signed char) = v21;
extern void v23 (signed short);
extern void (*v24) (signed short);
unsigned short v25 (signed char);
unsigned short (*v26) (signed char) = v25;
static signed int v27 (unsigned char, unsigned int, unsigned char, unsigned short);
static signed int (*v28) (unsigned char, unsigned int, unsigned char, unsigned short) = v27;
extern unsigned int v29 (signed int, unsigned int, signed short, unsigned char);
extern unsigned int (*v30) (signed int, unsigned int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed short v32 = -3;
unsigned int v31 = 7U;

static signed int v27 (unsigned char v34, unsigned int v35, unsigned char v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 4U;
unsigned int v39 = 0U;
unsigned int v38 = 3U;
trace++;
switch (trace)
{
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned short v25 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 3;
signed short v43 = -1;
unsigned int v42 = 0U;
trace++;
switch (trace)
{
case 6: 
return 1;
case 9: 
{
unsigned char v45;
unsigned int v46;
unsigned char v47;
unsigned short v48;
signed int v49;
v45 = 3 - 4;
v46 = v42 - v42;
v47 = 4 + 6;
v48 = 6 - 2;
v49 = v27 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned char v21 (signed int v50, signed char v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 5;
unsigned int v53 = 2U;
unsigned char v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = 1;
signed int v57 = 2;
signed short v56 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v59;
v59 = 1 + v55;
v19 (v59);
}
break;
case 15: 
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
v1 ();
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
