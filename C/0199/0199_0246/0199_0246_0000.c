#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (void);
static unsigned short (*v2) (void) = v1;
extern unsigned char v3 (signed int, unsigned int);
extern unsigned char (*v4) (signed int, unsigned int);
static signed int v5 (void);
static signed int (*v6) (void) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern unsigned int v13 (signed char, unsigned int);
extern unsigned int (*v14) (signed char, unsigned int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
unsigned int v19 (unsigned char, unsigned char, signed int);
unsigned int (*v20) (unsigned char, unsigned char, signed int) = v19;
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
extern unsigned int v23 (unsigned int, signed short, unsigned char);
extern unsigned int (*v24) (unsigned int, signed short, unsigned char);
extern unsigned char v25 (signed char, signed int, signed int, signed char);
extern unsigned char (*v26) (signed char, signed int, signed int, signed char);
extern unsigned char v27 (signed short, signed short, unsigned int);
extern unsigned char (*v28) (signed short, signed short, unsigned int);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed short v32 = -2;
signed char v31 = 3;

unsigned int v19 (unsigned char v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 2;
signed char v38 = 2;
unsigned char v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v5 (void)
{
{
for (;;) {
unsigned int v42 = 3U;
signed short v41 = 3;
signed int v40 = 3;
trace++;
switch (trace)
{
case 11: 
return -3;
default: abort ();
}
}
}
}

static unsigned short v1 (void)
{
{
for (;;) {
unsigned char v45 = 6;
unsigned int v44 = 3U;
signed int v43 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v46;
unsigned int v47;
unsigned char v48;
v46 = -1 + v43;
v47 = 1U + v44;
v48 = v3 (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 10: 
{
signed int v49;
v49 = v5 ();
history[history_index++] = (int)v49;
}
break;
case 12: 
return 1;
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
unsigned short v52;
v52 = v1 ();
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
