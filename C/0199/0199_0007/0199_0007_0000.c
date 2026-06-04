#include <stdio.h>
#include <stdlib.h>
static void v1 (void);
static void (*v2) (void) = v1;
extern signed short v3 (unsigned short, unsigned char);
extern signed short (*v4) (unsigned short, unsigned char);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
unsigned char v7 (unsigned short, signed char);
unsigned char (*v8) (unsigned short, signed char) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
signed int v11 (signed char, signed char, unsigned int);
signed int (*v12) (signed char, signed char, unsigned int) = v11;
unsigned int v13 (signed char);
unsigned int (*v14) (signed char) = v13;
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern signed char v17 (signed char, signed char, unsigned int, signed char);
extern signed char (*v18) (signed char, signed char, unsigned int, signed char);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern unsigned short v21 (signed int, signed int, unsigned char);
extern unsigned short (*v22) (signed int, signed int, unsigned char);
extern unsigned short v23 (unsigned short, signed int);
extern unsigned short (*v24) (unsigned short, signed int);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned int v32 = 3U;
unsigned short v31 = 7;

unsigned int v13 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 2;
unsigned int v36 = 3U;
unsigned short v35 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v38, signed char v39, unsigned int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 0;
signed short v42 = 2;
signed char v41 = 2;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v44;
signed int v45;
unsigned short v46;
v44 = 3 + 4;
v45 = v43 + v43;
v46 = v23 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v47, signed char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed short v51 = 2;
unsigned int v50 = 6U;
signed char v49 = 3;
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
unsigned char v54 = 6;
unsigned int v53 = 3U;
unsigned char v52 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v55;
v55 = 7 + 5;
v5 (v55);
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
