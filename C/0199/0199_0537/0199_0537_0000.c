#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed int, signed short, signed short);
static signed int (*v2) (signed int, signed short, signed short) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern unsigned short v9 (signed int, signed int);
extern unsigned short (*v10) (signed int, signed int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern signed short v13 (signed int, unsigned char);
extern signed short (*v14) (signed int, unsigned char);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern unsigned int v17 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned int v19 (signed char, unsigned short, unsigned short);
extern unsigned int (*v20) (signed char, unsigned short, unsigned short);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned int v23 (unsigned char, unsigned int, signed int, unsigned int);
unsigned int (*v24) (unsigned char, unsigned int, signed int, unsigned int) = v23;
extern signed int v25 (unsigned char, unsigned int, signed short, unsigned short);
extern signed int (*v26) (unsigned char, unsigned int, signed short, unsigned short);
extern void v27 (unsigned int, unsigned short);
extern void (*v28) (unsigned int, unsigned short);
extern void v29 (unsigned int, unsigned char);
extern void (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed short v32 = -3;
signed short v31 = -3;

unsigned int v23 (unsigned char v34, unsigned int v35, signed int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 5;
unsigned char v39 = 0;
signed short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed int v43 = 3;
signed char v42 = 1;
signed int v41 = 1;
trace++;
switch (trace)
{
case 11: 
return v42;
default: abort ();
}
}
}
}

static signed int v1 (signed int v44, signed short v45, signed short v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 0;
unsigned int v48 = 3U;
signed char v47 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed short v50;
signed short v51;
v50 = 1 + v46;
v51 = v7 (v50);
history[history_index++] = (int)v51;
}
break;
case 14: 
return -1;
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
signed int v54;
signed short v55;
signed short v56;
signed int v57;
v54 = 2 + 0;
v55 = v32 - v32;
v56 = v31 + -3;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
