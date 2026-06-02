#include <stdio.h>
#include <stdlib.h>
static void v1 (void);
static void (*v2) (void) = v1;
extern signed char v3 (signed short, signed char, signed char, signed char);
extern signed char (*v4) (signed short, signed char, signed char, signed char);
static signed char v5 (unsigned char);
static signed char (*v6) (unsigned char) = v5;
extern signed char v7 (unsigned char, unsigned short, unsigned char);
extern signed char (*v8) (unsigned char, unsigned short, unsigned char);
extern void v9 (unsigned short, unsigned char, signed int);
extern void (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (signed int);
extern signed int (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned char v15 (unsigned int);
unsigned char (*v16) (unsigned int) = v15;
signed short v17 (unsigned char, unsigned short, signed short);
signed short (*v18) (unsigned char, unsigned short, signed short) = v17;
extern unsigned char v19 (signed short, unsigned short, signed int);
extern unsigned char (*v20) (signed short, unsigned short, signed int);
extern void v21 (unsigned char, signed char, unsigned char);
extern void (*v22) (unsigned char, signed char, unsigned char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern unsigned int v27 (signed int, unsigned char, unsigned int, signed short);
extern unsigned int (*v28) (signed int, unsigned char, unsigned int, signed short);
extern signed char v29 (signed short, unsigned short);
extern signed char (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned char v32 = 0;
signed short v31 = 0;

signed short v17 (unsigned char v34, unsigned short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 3;
unsigned char v38 = 6;
unsigned char v37 = 3;
trace++;
switch (trace)
{
case 9: 
{
signed int v40;
unsigned char v41;
unsigned int v42;
signed short v43;
unsigned int v44;
v40 = v39 - 0;
v41 = 3 - v38;
v42 = 4U - 6U;
v43 = -3 - v36;
v44 = v27 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 13: 
return v36;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = 1;
signed short v47 = -1;
signed char v46 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v5 (unsigned char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = 3;
unsigned char v51 = 1;
unsigned char v50 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed short v53;
v53 = v13 ();
history[history_index++] = (int)v53;
}
break;
case 3: 
{
signed short v54;
v54 = v13 ();
history[history_index++] = (int)v54;
}
break;
case 5: 
{
signed short v55;
v55 = v13 ();
history[history_index++] = (int)v55;
}
break;
case 7: 
{
signed short v56;
v56 = v13 ();
history[history_index++] = (int)v56;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}

static void v1 (void)
{
{
for (;;) {
unsigned char v59 = 7;
signed char v58 = -2;
unsigned short v57 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v60;
signed char v61;
v60 = v59 + 7;
v61 = v5 (v60);
history[history_index++] = (int)v61;
}
break;
case 16: 
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
