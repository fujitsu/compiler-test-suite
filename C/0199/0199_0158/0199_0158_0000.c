#include <stdio.h>
#include <stdlib.h>
static void v1 (void);
static void (*v2) (void) = v1;
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned int v7 (signed char, signed char, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned char);
extern signed int v9 (unsigned char, signed char);
extern signed int (*v10) (unsigned char, signed char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned short v13 (unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned int, unsigned char);
signed short v15 (unsigned int, signed char, signed short);
signed short (*v16) (unsigned int, signed char, signed short) = v15;
signed char v17 (unsigned char, signed int, unsigned int);
signed char (*v18) (unsigned char, signed int, unsigned int) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (signed char, signed int, signed short, signed short);
extern unsigned int (*v26) (signed char, signed int, signed short, signed short);
extern unsigned int v27 (signed int, unsigned int, unsigned char, signed short);
extern unsigned int (*v28) (signed int, unsigned int, unsigned char, signed short);
extern void v29 (unsigned char, unsigned short, signed int, signed short);
extern void (*v30) (unsigned char, unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed char v32 = 1;
signed char v31 = 3;

signed char v17 (unsigned char v34, signed int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 7;
signed char v38 = -3;
signed short v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v40, signed char v41, signed short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 7;
signed char v44 = -4;
signed char v43 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (void)
{
{
for (;;) {
unsigned int v48 = 5U;
unsigned int v47 = 3U;
signed int v46 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v49;
v49 = v21 ();
history[history_index++] = (int)v49;
}
break;
case 2: 
{
unsigned short v50;
signed short v51;
v50 = 6 - 5;
v51 = v11 (v50);
history[history_index++] = (int)v51;
}
break;
case 6: 
{
signed int v52;
unsigned int v53;
unsigned char v54;
signed short v55;
unsigned int v56;
v52 = v46 + v46;
v53 = 4U + v48;
v54 = 0 + 2;
v55 = 3 - 3;
v56 = v27 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 12: 
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
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
